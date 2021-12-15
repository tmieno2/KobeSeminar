#/*=================================================*/
#' # Prepare data for the presentation
#/*=================================================*/
root_dir <- "/Users/tmieno2/Dropbox/ResearchProjects/WaterEconomics/DroughtRiskAquifer"  

all_res <- readRDS(file.path(root_dir, "Shared/Results/all_res.rds"))

#/*----------------------------------*/
#' ## data for yield response viz
#/*----------------------------------*/
viz_data_yield <- 
  all_res %>% 
  .[voi == "balance" & model == "semi", ] %>% 
  .[, .(crop, yhat_data)]

saveRDS(viz_data_yield, here("Kobe_University", "viz_data_yield.rds"))

#/*----------------------------------*/
#' ## data for yield response viz
#/*----------------------------------*/
viz_data_share <- 
  all_res %>% 
  .[voi == "balance" & model == "semi", ] %>% 
  .[, .(crop, share_pred_data)]

saveRDS(viz_data_share, here("Kobe_University", "viz_data_share.rds"))

#/*----------------------------------*/
#' ## data for summary statistics
#/*----------------------------------*/
data_for_sum <- 
  all_res %>% 
  .[voi == "balance" & model == "semi", ] %>% 
  .[, .(crop, data_int, ir_share_data, pred_data)]

saveRDS(data_for_sum, here("Kobe_University", "data_for_summary.rds"))



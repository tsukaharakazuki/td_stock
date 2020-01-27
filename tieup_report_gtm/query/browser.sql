SELECT
  TD_TIME_FORMAT(time, 'yyyy-MM-dd', 'JST') AS select_time ,
  uaip_browser ,
  label ,
  SUM(uaip_cnt) AS uaip_browser_cnt
FROM 
  uaip_${td.each.db_client_name}_${td.each.db_label}
GROUP BY
  1,2,3

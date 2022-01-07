
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p2p_data {int dummy; } ;


 int p2p_dbg (struct p2p_data*,char*,void*) ;
 int p2p_free_sd_query (void*) ;
 scalar_t__ p2p_unlink_sd_query (struct p2p_data*,void*) ;

int p2p_sd_cancel_request(struct p2p_data *p2p, void *req)
{
 if (p2p_unlink_sd_query(p2p, req)) {
  p2p_dbg(p2p, "Cancel pending SD query %p", req);
  p2p_free_sd_query(req);
  return 0;
 }
 return -1;
}

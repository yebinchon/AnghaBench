
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rrm_data {int * neighbor_rep_cb_ctx; int (* notify_neighbor_rep ) (int *,int *) ;} ;


 int MSG_DEBUG ;
 int MSG_ERROR ;
 int stub1 (int *,int *) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void wpas_rrm_neighbor_rep_timeout_handler(void *data, void *user_ctx)
{
 struct rrm_data *rrm = data;

 if (!rrm->notify_neighbor_rep) {
  wpa_printf(MSG_ERROR,
      "RRM: Unexpected neighbor report timeout");
  return;
 }

 wpa_printf(MSG_DEBUG, "RRM: Notifying neighbor report - NONE");
 rrm->notify_neighbor_rep(rrm->neighbor_rep_cb_ctx, ((void*)0));

 rrm->notify_neighbor_rep = ((void*)0);
 rrm->neighbor_rep_cb_ctx = ((void*)0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_sm {int * cur_pmksa; TYPE_1__* ctx; } ;
struct TYPE_2__ {int msg_ctx; } ;


 int MSG_DEBUG ;
 int wpa_dbg (int ,int ,char*) ;

void wpa_sm_aborted_cached(struct wpa_sm *sm)
{
 if (sm && sm->cur_pmksa) {
  wpa_dbg(sm->ctx->msg_ctx, MSG_DEBUG,
   "RSN: Cancelling PMKSA caching attempt");
  sm->cur_pmksa = ((void*)0);
 }
}

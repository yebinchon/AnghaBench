
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_sm {int assoc_wpa_ie_len; int * assoc_wpa_ie; TYPE_1__* ctx; } ;
struct wpa_ie_data {int dummy; } ;
struct TYPE_2__ {int msg_ctx; } ;


 int MSG_DEBUG ;
 int wpa_dbg (int ,int ,char*) ;
 scalar_t__ wpa_parse_wpa_ie (int *,int ,struct wpa_ie_data*) ;

int wpa_sm_parse_own_wpa_ie(struct wpa_sm *sm, struct wpa_ie_data *data)
{
 if (sm == ((void*)0))
  return -1;

 if (sm->assoc_wpa_ie == ((void*)0)) {
  wpa_dbg(sm->ctx->msg_ctx, MSG_DEBUG,
   "WPA: No WPA/RSN IE available from association info");
  return -1;
 }
 if (wpa_parse_wpa_ie(sm->assoc_wpa_ie, sm->assoc_wpa_ie_len, data))
  return -2;
 return 0;
}

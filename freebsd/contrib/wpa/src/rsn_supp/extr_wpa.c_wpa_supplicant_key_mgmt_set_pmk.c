
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_sm {scalar_t__ key_mgmt; TYPE_1__* ctx; int pmk_len; int pmk; int xxkey_len; int xxkey; } ;
struct TYPE_2__ {int msg_ctx; } ;


 int MSG_DEBUG ;
 scalar_t__ WPA_KEY_MGMT_FT_IEEE8021X ;
 int wpa_dbg (int ,int ,char*) ;
 scalar_t__ wpa_sm_key_mgmt_set_pmk (struct wpa_sm*,int ,int ) ;

__attribute__((used)) static void wpa_supplicant_key_mgmt_set_pmk(struct wpa_sm *sm)
{







  if (wpa_sm_key_mgmt_set_pmk(sm, sm->pmk, sm->pmk_len))
   wpa_dbg(sm->ctx->msg_ctx, MSG_DEBUG,
    "RSN: Cannot set PMK for key management offload");



}

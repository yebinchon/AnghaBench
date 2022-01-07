
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_sm {TYPE_1__* ctx; } ;
struct TYPE_2__ {int msg_ctx; } ;


 int MSG_DEBUG ;
 int wpa_dbg (int ,int ,char*) ;
 int wpa_sm_key_request (struct wpa_sm*,int ,int) ;

__attribute__((used)) static void wpa_sm_rekey_ptk(void *eloop_ctx, void *timeout_ctx)
{
 struct wpa_sm *sm = eloop_ctx;
 wpa_dbg(sm->ctx->msg_ctx, MSG_DEBUG, "WPA: Request PTK rekeying");
 wpa_sm_key_request(sm, 0, 1);
}

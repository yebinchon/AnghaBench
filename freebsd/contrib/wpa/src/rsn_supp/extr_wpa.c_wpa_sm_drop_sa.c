
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_sm {scalar_t__ pmk_r1_len; int * pmk_r1; scalar_t__ pmk_r0_len; int * pmk_r0; scalar_t__ xxkey_len; int * xxkey; int igtk_wnm_sleep; int igtk; int gtk_wnm_sleep; int gtk; int tptk; int ptk; int * pmk; scalar_t__ pmk_len; scalar_t__ tptk_set; scalar_t__ ptk_set; TYPE_1__* ctx; } ;
struct TYPE_2__ {int msg_ctx; } ;


 int MSG_DEBUG ;
 int os_memset (int *,int ,int) ;
 int wpa_dbg (int ,int ,char*) ;

void wpa_sm_drop_sa(struct wpa_sm *sm)
{
 wpa_dbg(sm->ctx->msg_ctx, MSG_DEBUG, "WPA: Clear old PMK and PTK");
 sm->ptk_set = 0;
 sm->tptk_set = 0;
 sm->pmk_len = 0;
 os_memset(sm->pmk, 0, sizeof(sm->pmk));
 os_memset(&sm->ptk, 0, sizeof(sm->ptk));
 os_memset(&sm->tptk, 0, sizeof(sm->tptk));
 os_memset(&sm->gtk, 0, sizeof(sm->gtk));
 os_memset(&sm->gtk_wnm_sleep, 0, sizeof(sm->gtk_wnm_sleep));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int eapol; } ;


 int eapol_sm_notify_ctrl_response (int ) ;

__attribute__((used)) static void wpas_ctrl_eapol_response(void *eloop_ctx, void *timeout_ctx)
{
 struct wpa_supplicant *wpa_s = eloop_ctx;
 eapol_sm_notify_ctrl_response(wpa_s->eapol);
}

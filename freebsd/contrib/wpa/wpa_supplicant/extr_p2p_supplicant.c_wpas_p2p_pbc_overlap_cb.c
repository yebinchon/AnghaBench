
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int dummy; } ;


 int wpas_p2p_notif_pbc_overlap (struct wpa_supplicant*) ;

void wpas_p2p_pbc_overlap_cb(void *eloop_ctx, void *timeout_ctx)
{
 struct wpa_supplicant *wpa_s = eloop_ctx;
 wpas_p2p_notif_pbc_overlap(wpa_s);
}

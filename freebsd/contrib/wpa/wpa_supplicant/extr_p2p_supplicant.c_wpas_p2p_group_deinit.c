
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int * connect_without_scan; int * ap_configured_cb_data; int * ap_configured_cb_ctx; int * ap_configured_cb; int * p2p_group; } ;


 int p2p_group_deinit (int *) ;

__attribute__((used)) static void wpas_p2p_group_deinit(struct wpa_supplicant *wpa_s)
{
 p2p_group_deinit(wpa_s->p2p_group);
 wpa_s->p2p_group = ((void*)0);

 wpa_s->ap_configured_cb = ((void*)0);
 wpa_s->ap_configured_cb_ctx = ((void*)0);
 wpa_s->ap_configured_cb_data = ((void*)0);
 wpa_s->connect_without_scan = ((void*)0);
}

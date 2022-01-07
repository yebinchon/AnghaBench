
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int dummy; } ;
struct wpa_scan_results {int dummy; } ;


 int MSG_DEBUG ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void wpas_p2p_scan_res_ignore(struct wpa_supplicant *wpa_s,
         struct wpa_scan_results *scan_res)
{
 wpa_printf(MSG_DEBUG, "P2P: Ignore scan results");
}

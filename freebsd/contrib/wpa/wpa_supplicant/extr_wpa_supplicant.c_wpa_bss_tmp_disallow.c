
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_supplicant {int bss_tmp_disallowed; } ;
struct wpa_bss_tmp_disallowed {int rssi_threshold; int list; int bssid; } ;


 int ETH_ALEN ;
 int MSG_DEBUG ;
 int dl_list_add (int *,int *) ;
 int eloop_cancel_timeout (int ,struct wpa_supplicant*,struct wpa_bss_tmp_disallowed*) ;
 int eloop_register_timeout (unsigned int,int ,int ,struct wpa_supplicant*,struct wpa_bss_tmp_disallowed*) ;
 struct wpa_bss_tmp_disallowed* os_malloc (int) ;
 int os_memcpy (int ,int const*,int ) ;
 int wpa_bss_tmp_disallow_timeout ;
 int wpa_printf (int ,char*) ;
 int wpa_set_driver_tmp_disallow_list (struct wpa_supplicant*) ;
 struct wpa_bss_tmp_disallowed* wpas_get_disallowed_bss (struct wpa_supplicant*,int const*) ;

void wpa_bss_tmp_disallow(struct wpa_supplicant *wpa_s, const u8 *bssid,
     unsigned int sec, int rssi_threshold)
{
 struct wpa_bss_tmp_disallowed *bss;

 bss = wpas_get_disallowed_bss(wpa_s, bssid);
 if (bss) {
  eloop_cancel_timeout(wpa_bss_tmp_disallow_timeout, wpa_s, bss);
  goto finish;
 }

 bss = os_malloc(sizeof(*bss));
 if (!bss) {
  wpa_printf(MSG_DEBUG,
      "Failed to allocate memory for temp disallow BSS");
  return;
 }

 os_memcpy(bss->bssid, bssid, ETH_ALEN);
 dl_list_add(&wpa_s->bss_tmp_disallowed, &bss->list);
 wpa_set_driver_tmp_disallow_list(wpa_s);

finish:
 bss->rssi_threshold = rssi_threshold;
 eloop_register_timeout(sec, 0, wpa_bss_tmp_disallow_timeout,
          wpa_s, bss);
}

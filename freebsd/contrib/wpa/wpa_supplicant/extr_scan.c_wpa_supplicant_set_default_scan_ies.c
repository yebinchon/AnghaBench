
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct wpa_supplicant {scalar_t__ p2p_group_interface; int enable_oce; } ;
typedef int ext_capab ;
typedef enum wpa_driver_if_type { ____Placeholder_wpa_driver_if_type } wpa_driver_if_type ;


 int OCE_STA ;
 scalar_t__ P2P_GROUP_INTERFACE_CLIENT ;
 int WPA_IF_P2P_CLIENT ;
 int WPA_IF_STATION ;
 int wpa_drv_get_ext_capa (struct wpa_supplicant*,int) ;
 int wpa_drv_set_default_scan_ies (struct wpa_supplicant*,int ,int ) ;
 int wpabuf_free (struct wpabuf*) ;
 int wpabuf_head (struct wpabuf*) ;
 int wpabuf_len (struct wpabuf*) ;
 int wpabuf_put_data (struct wpabuf*,int *,int) ;
 scalar_t__ wpabuf_resize (struct wpabuf**,int) ;
 int wpas_build_ext_capab (struct wpa_supplicant*,int *,int) ;
 int wpas_fils_req_param_add_max_channel (struct wpa_supplicant*,struct wpabuf**) ;
 int wpas_mbo_scan_ie (struct wpa_supplicant*,struct wpabuf*) ;

void wpa_supplicant_set_default_scan_ies(struct wpa_supplicant *wpa_s)
{
 struct wpabuf *default_ies = ((void*)0);
 u8 ext_capab[18];
 int ext_capab_len;
 enum wpa_driver_if_type type = WPA_IF_STATION;






 wpa_drv_get_ext_capa(wpa_s, type);

 ext_capab_len = wpas_build_ext_capab(wpa_s, ext_capab,
          sizeof(ext_capab));
 if (ext_capab_len > 0 &&
     wpabuf_resize(&default_ies, ext_capab_len) == 0)
  wpabuf_put_data(default_ies, ext_capab, ext_capab_len);
 if (default_ies)
  wpa_drv_set_default_scan_ies(wpa_s, wpabuf_head(default_ies),
          wpabuf_len(default_ies));
 wpabuf_free(default_ies);
}

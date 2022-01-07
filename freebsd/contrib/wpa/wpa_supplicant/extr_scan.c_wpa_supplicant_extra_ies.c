
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct wpabuf {int dummy; } ;
struct wpa_supplicant {scalar_t__ p2p_group_interface; int enable_oce; struct wpabuf** vendor_elem; struct wpabuf* fst_ies; TYPE_3__* conf; TYPE_2__* global; TYPE_1__* wps; } ;
typedef int ext_capab ;
typedef enum wps_request_type { ____Placeholder_wps_request_type } wps_request_type ;
struct TYPE_6__ {scalar_t__ hs20; scalar_t__ interworking; } ;
struct TYPE_5__ {int p2p; } ;
struct TYPE_4__ {int uuid; int dev; } ;


 int DEV_PW_DEFAULT ;
 int DEV_PW_PUSHBUTTON ;
 int OCE_STA ;
 scalar_t__ P2P_GROUP_INTERFACE_CLIENT ;
 size_t VENDOR_ELEM_PROBE_REQ ;
 int WPA_IF_P2P_CLIENT ;
 int WPA_IF_STATION ;
 int WPS_REQ_ENROLLEE_INFO ;
 size_t p2p_scan_ie_buf_len (int ) ;
 int wpa_drv_get_ext_capa (struct wpa_supplicant*,int ) ;
 int wpa_supplicant_mesh_add_scan_ie (struct wpa_supplicant*,struct wpabuf**) ;
 int wpabuf_free (struct wpabuf*) ;
 int wpabuf_len (struct wpabuf*) ;
 int wpabuf_put_buf (struct wpabuf*,struct wpabuf*) ;
 int wpabuf_put_data (struct wpabuf*,int *,int) ;
 scalar_t__ wpabuf_resize (struct wpabuf**,int) ;
 int wpas_add_interworking_elements (struct wpa_supplicant*,struct wpabuf*) ;
 int wpas_build_ext_capab (struct wpa_supplicant*,int *,int) ;
 int wpas_fils_req_param_add_max_channel (struct wpa_supplicant*,struct wpabuf**) ;
 int wpas_hs20_add_indication (struct wpabuf*,int,int ) ;
 int wpas_mbo_scan_ie (struct wpa_supplicant*,struct wpabuf*) ;
 int wpas_p2p_scan_ie (struct wpa_supplicant*,struct wpabuf*) ;
 int wpas_wps_in_use (struct wpa_supplicant*,int*) ;
 struct wpabuf* wps_build_probe_req_ie (int ,int *,int ,int,int ,int *) ;

__attribute__((used)) static struct wpabuf * wpa_supplicant_extra_ies(struct wpa_supplicant *wpa_s)
{
 struct wpabuf *extra_ie = ((void*)0);
 u8 ext_capab[18];
 int ext_capab_len;
  wpa_drv_get_ext_capa(wpa_s, WPA_IF_STATION);

 ext_capab_len = wpas_build_ext_capab(wpa_s, ext_capab,
          sizeof(ext_capab));
 if (ext_capab_len > 0 &&
     wpabuf_resize(&extra_ie, ext_capab_len) == 0)
  wpabuf_put_data(extra_ie, ext_capab, ext_capab_len);
 if (wpa_s->vendor_elem[VENDOR_ELEM_PROBE_REQ]) {
  struct wpabuf *buf = wpa_s->vendor_elem[VENDOR_ELEM_PROBE_REQ];

  if (wpabuf_resize(&extra_ie, wpabuf_len(buf)) == 0)
   wpabuf_put_buf(extra_ie, buf);
 }

 return extra_ie;
}

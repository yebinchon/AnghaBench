
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int const u8 ;
struct wpabuf {int dummy; } ;
struct wpa_supplicant {size_t p2p_join_ssid_len; int own_scan_requested; scalar_t__ clear_driver_scan_cache; int (* scan_res_handler ) (struct wpa_supplicant*,int *) ;int scan_trigger_time; TYPE_3__* global; int pending_join_iface_addr; TYPE_2__* wps; int p2p_join_ssid; } ;
struct wpa_driver_scan_params {int num_ssids; int* freqs; int p2p_probe; int only_new_results; scalar_t__ extra_ies_len; int extra_ies; TYPE_1__* ssids; } ;
typedef int params ;
struct TYPE_8__ {int p2p; } ;
struct TYPE_7__ {int p2p; } ;
struct TYPE_6__ {int uuid; TYPE_4__ dev; } ;
struct TYPE_5__ {size_t ssid_len; int const* ssid; } ;


 int DEV_PW_DEFAULT ;
 int MSG_DEBUG ;
 scalar_t__ P2P_WILDCARD_SSID ;
 size_t P2P_WILDCARD_SSID_LEN ;
 int WPS_REQ_ENROLLEE ;
 int eloop_cancel_timeout (int ,struct wpa_supplicant*,int *) ;
 int eloop_register_timeout (int,int ,int ,struct wpa_supplicant*,int *) ;
 int os_get_reltime (int *) ;
 int os_memcpy (int ,int const*,size_t) ;
 int os_memset (struct wpa_driver_scan_params*,int ,int) ;
 int p2p_get_oper_freq (int ,int ) ;
 int p2p_scan_ie (int ,struct wpabuf*,int *,unsigned int) ;
 size_t p2p_scan_ie_buf_len (int ) ;
 int wpa_drv_scan (struct wpa_supplicant*,struct wpa_driver_scan_params*) ;
 int wpa_printf (int ,char*) ;
 struct wpabuf* wpabuf_alloc (scalar_t__) ;
 int wpabuf_free (struct wpabuf*) ;
 int wpabuf_head (struct wpabuf*) ;
 scalar_t__ wpabuf_len (struct wpabuf*) ;
 int wpabuf_put_buf (struct wpabuf*,struct wpabuf*) ;
 unsigned int wpas_get_bands (struct wpa_supplicant*,int*) ;
 int wpas_p2p_check_join_scan_limit (struct wpa_supplicant*) ;
 int wpas_p2p_join_scan ;
 int wpas_p2p_scan_res_join (struct wpa_supplicant*,int *) ;
 struct wpabuf* wps_build_probe_req_ie (int ,TYPE_4__*,int ,int ,int ,int *) ;

__attribute__((used)) static void wpas_p2p_join_scan_req(struct wpa_supplicant *wpa_s, int freq,
       const u8 *ssid, size_t ssid_len)
{
 int ret;
 struct wpa_driver_scan_params params;
 struct wpabuf *wps_ie, *ies;
 size_t ielen;
 int freqs[2] = { 0, 0 };
 unsigned int bands;

 os_memset(&params, 0, sizeof(params));


 params.num_ssids = 1;
 if (ssid && ssid_len) {
  params.ssids[0].ssid = ssid;
  params.ssids[0].ssid_len = ssid_len;
  os_memcpy(wpa_s->p2p_join_ssid, ssid, ssid_len);
  wpa_s->p2p_join_ssid_len = ssid_len;
 } else {
  params.ssids[0].ssid = (u8 *) P2P_WILDCARD_SSID;
  params.ssids[0].ssid_len = P2P_WILDCARD_SSID_LEN;
  wpa_s->p2p_join_ssid_len = 0;
 }

 wpa_s->wps->dev.p2p = 1;
 wps_ie = wps_build_probe_req_ie(DEV_PW_DEFAULT, &wpa_s->wps->dev,
     wpa_s->wps->uuid, WPS_REQ_ENROLLEE, 0,
     ((void*)0));
 if (wps_ie == ((void*)0)) {
  wpas_p2p_scan_res_join(wpa_s, ((void*)0));
  return;
 }

 if (!freq) {
  int oper_freq;




  oper_freq = p2p_get_oper_freq(wpa_s->global->p2p,
           wpa_s->pending_join_iface_addr);
  if (oper_freq > 0)
   freq = oper_freq;
 }
 if (freq > 0) {
  freqs[0] = freq;
  params.freqs = freqs;
 }

 ielen = p2p_scan_ie_buf_len(wpa_s->global->p2p);
 ies = wpabuf_alloc(wpabuf_len(wps_ie) + ielen);
 if (ies == ((void*)0)) {
  wpabuf_free(wps_ie);
  wpas_p2p_scan_res_join(wpa_s, ((void*)0));
  return;
 }
 wpabuf_put_buf(ies, wps_ie);
 wpabuf_free(wps_ie);

 bands = wpas_get_bands(wpa_s, freqs);
 p2p_scan_ie(wpa_s->global->p2p, ies, ((void*)0), bands);

 params.p2p_probe = 1;
 params.extra_ies = wpabuf_head(ies);
 params.extra_ies_len = wpabuf_len(ies);

 if (wpa_s->clear_driver_scan_cache) {
  wpa_printf(MSG_DEBUG,
      "Request driver to clear scan cache due to local BSS flush");
  params.only_new_results = 1;
 }





 ret = wpa_drv_scan(wpa_s, &params);
 if (!ret) {
  os_get_reltime(&wpa_s->scan_trigger_time);
  wpa_s->scan_res_handler = wpas_p2p_scan_res_join;
  wpa_s->own_scan_requested = 1;
  wpa_s->clear_driver_scan_cache = 0;
 }

 wpabuf_free(ies);

 if (ret) {
  wpa_printf(MSG_DEBUG, "P2P: Failed to start scan for join - "
      "try again later");
  eloop_cancel_timeout(wpas_p2p_join_scan, wpa_s, ((void*)0));
  eloop_register_timeout(1, 0, wpas_p2p_join_scan, wpa_s, ((void*)0));
  wpas_p2p_check_join_scan_limit(wpa_s);
 }
}

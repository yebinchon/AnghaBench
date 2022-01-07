
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {size_t used; } ;
struct wpa_global {int * p2p; int ** wfd_subelem; int wifi_display; } ;


 int MSG_DEBUG ;
 size_t WFD_SUBELEM_ASSOCIATED_BSSID ;
 size_t WFD_SUBELEM_COUPLED_SINK ;
 size_t WFD_SUBELEM_DEVICE_INFO ;
 size_t WFD_SUBELEM_EXT_CAPAB ;
 size_t WFD_SUBELEM_R2_DEVICE_INFO ;
 size_t WFD_SUBELEM_SESSION_INFO ;
 int p2p_set_wfd_assoc_bssid (int *,int *) ;
 int p2p_set_wfd_coupled_sink_info (int *,int *) ;
 int p2p_set_wfd_dev_info (int *,int *) ;
 int p2p_set_wfd_ie_assoc_req (int *,struct wpabuf*) ;
 int p2p_set_wfd_ie_beacon (int *,struct wpabuf*) ;
 int p2p_set_wfd_ie_go_neg (int *,struct wpabuf*) ;
 int p2p_set_wfd_ie_invitation (int *,struct wpabuf*) ;
 int p2p_set_wfd_ie_probe_req (int *,struct wpabuf*) ;
 int p2p_set_wfd_ie_probe_resp (int *,struct wpabuf*) ;
 int p2p_set_wfd_ie_prov_disc_req (int *,struct wpabuf*) ;
 int p2p_set_wfd_ie_prov_disc_resp (int *,struct wpabuf*) ;
 int p2p_set_wfd_r2_dev_info (int *,int *) ;
 struct wpabuf* wifi_display_encaps (struct wpabuf*) ;
 int wpa_hexdump_buf (int ,char*,struct wpabuf*) ;
 int wpa_printf (int ,char*) ;
 struct wpabuf* wpabuf_alloc (size_t) ;
 int wpabuf_free (struct wpabuf*) ;
 scalar_t__ wpabuf_len (int *) ;
 int wpabuf_put_buf (struct wpabuf*,int *) ;

__attribute__((used)) static int wifi_display_update_wfd_ie(struct wpa_global *global)
{
 struct wpabuf *ie, *buf;
 size_t len, plen;

 if (global->p2p == ((void*)0))
  return 0;

 wpa_printf(MSG_DEBUG, "WFD: Update WFD IE");

 if (!global->wifi_display) {
  wpa_printf(MSG_DEBUG, "WFD: Wi-Fi Display disabled - do not "
      "include WFD IE");
  p2p_set_wfd_ie_beacon(global->p2p, ((void*)0));
  p2p_set_wfd_ie_probe_req(global->p2p, ((void*)0));
  p2p_set_wfd_ie_probe_resp(global->p2p, ((void*)0));
  p2p_set_wfd_ie_assoc_req(global->p2p, ((void*)0));
  p2p_set_wfd_ie_invitation(global->p2p, ((void*)0));
  p2p_set_wfd_ie_prov_disc_req(global->p2p, ((void*)0));
  p2p_set_wfd_ie_prov_disc_resp(global->p2p, ((void*)0));
  p2p_set_wfd_ie_go_neg(global->p2p, ((void*)0));
  p2p_set_wfd_dev_info(global->p2p, ((void*)0));
  p2p_set_wfd_r2_dev_info(global->p2p, ((void*)0));
  p2p_set_wfd_assoc_bssid(global->p2p, ((void*)0));
  p2p_set_wfd_coupled_sink_info(global->p2p, ((void*)0));
  return 0;
 }

 p2p_set_wfd_dev_info(global->p2p,
        global->wfd_subelem[WFD_SUBELEM_DEVICE_INFO]);
 p2p_set_wfd_r2_dev_info(
  global->p2p, global->wfd_subelem[WFD_SUBELEM_R2_DEVICE_INFO]);
 p2p_set_wfd_assoc_bssid(
  global->p2p,
  global->wfd_subelem[WFD_SUBELEM_ASSOCIATED_BSSID]);
 p2p_set_wfd_coupled_sink_info(
  global->p2p, global->wfd_subelem[WFD_SUBELEM_COUPLED_SINK]);
 len = 0;
 if (global->wfd_subelem[WFD_SUBELEM_DEVICE_INFO])
  len += wpabuf_len(global->wfd_subelem[
       WFD_SUBELEM_DEVICE_INFO]);

 if (global->wfd_subelem[WFD_SUBELEM_R2_DEVICE_INFO])
  len += wpabuf_len(global->wfd_subelem[
       WFD_SUBELEM_R2_DEVICE_INFO]);

 if (global->wfd_subelem[WFD_SUBELEM_ASSOCIATED_BSSID])
  len += wpabuf_len(global->wfd_subelem[
       WFD_SUBELEM_ASSOCIATED_BSSID]);
 if (global->wfd_subelem[WFD_SUBELEM_COUPLED_SINK])
  len += wpabuf_len(global->wfd_subelem[
       WFD_SUBELEM_COUPLED_SINK]);
 if (global->wfd_subelem[WFD_SUBELEM_SESSION_INFO])
  len += wpabuf_len(global->wfd_subelem[
       WFD_SUBELEM_SESSION_INFO]);
 if (global->wfd_subelem[WFD_SUBELEM_EXT_CAPAB])
  len += wpabuf_len(global->wfd_subelem[WFD_SUBELEM_EXT_CAPAB]);
 buf = wpabuf_alloc(len);
 if (buf == ((void*)0))
  return -1;

 if (global->wfd_subelem[WFD_SUBELEM_DEVICE_INFO])
  wpabuf_put_buf(buf,
          global->wfd_subelem[WFD_SUBELEM_DEVICE_INFO]);

 if (global->wfd_subelem[WFD_SUBELEM_R2_DEVICE_INFO])
  wpabuf_put_buf(buf,
          global->wfd_subelem[WFD_SUBELEM_R2_DEVICE_INFO]);

 if (global->wfd_subelem[WFD_SUBELEM_ASSOCIATED_BSSID])
  wpabuf_put_buf(buf, global->wfd_subelem[
           WFD_SUBELEM_ASSOCIATED_BSSID]);
 if (global->wfd_subelem[WFD_SUBELEM_COUPLED_SINK])
  wpabuf_put_buf(buf,
          global->wfd_subelem[WFD_SUBELEM_COUPLED_SINK]);

 ie = wifi_display_encaps(buf);
 wpa_hexdump_buf(MSG_DEBUG, "WFD: WFD IE for Beacon", ie);
 p2p_set_wfd_ie_beacon(global->p2p, ie);

 ie = wifi_display_encaps(buf);
 wpa_hexdump_buf(MSG_DEBUG, "WFD: WFD IE for (Re)Association Request",
   ie);
 p2p_set_wfd_ie_assoc_req(global->p2p, ie);

 ie = wifi_display_encaps(buf);
 wpa_hexdump_buf(MSG_DEBUG, "WFD: WFD IE for GO Negotiation", ie);
 p2p_set_wfd_ie_go_neg(global->p2p, ie);

 ie = wifi_display_encaps(buf);
 wpa_hexdump_buf(MSG_DEBUG, "WFD: WFD IE for Provision Discovery "
   "Request", ie);
 p2p_set_wfd_ie_prov_disc_req(global->p2p, ie);

 plen = buf->used;
 if (global->wfd_subelem[WFD_SUBELEM_EXT_CAPAB])
  wpabuf_put_buf(buf,
          global->wfd_subelem[WFD_SUBELEM_EXT_CAPAB]);

 ie = wifi_display_encaps(buf);
 wpa_hexdump_buf(MSG_DEBUG, "WFD: WFD IE for Probe Request", ie);
 p2p_set_wfd_ie_probe_req(global->p2p, ie);

 if (global->wfd_subelem[WFD_SUBELEM_SESSION_INFO])
  wpabuf_put_buf(buf,
          global->wfd_subelem[WFD_SUBELEM_SESSION_INFO]);
 ie = wifi_display_encaps(buf);
 wpa_hexdump_buf(MSG_DEBUG, "WFD: WFD IE for Probe Response", ie);
 p2p_set_wfd_ie_probe_resp(global->p2p, ie);


 buf->used = plen;
 if (global->wfd_subelem[WFD_SUBELEM_SESSION_INFO])
  wpabuf_put_buf(buf,
          global->wfd_subelem[WFD_SUBELEM_SESSION_INFO]);

 ie = wifi_display_encaps(buf);
 wpa_hexdump_buf(MSG_DEBUG, "WFD: WFD IE for P2P Invitation", ie);
 p2p_set_wfd_ie_invitation(global->p2p, ie);

 ie = wifi_display_encaps(buf);
 wpa_hexdump_buf(MSG_DEBUG, "WFD: WFD IE for Provision Discovery "
   "Response", ie);
 p2p_set_wfd_ie_prov_disc_resp(global->p2p, ie);

 wpabuf_free(buf);

 return 0;
}

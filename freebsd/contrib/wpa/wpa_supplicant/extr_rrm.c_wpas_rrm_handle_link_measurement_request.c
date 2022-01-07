
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct wpabuf {int dummy; } ;
struct TYPE_3__ {int rrm_used; } ;
struct wpa_supplicant {scalar_t__ wpa_state; int drv_rrm_flags; int bssid; int own_addr; int assoc_freq; TYPE_1__ rrm; } ;
struct rrm_link_measurement_request {int dialog_token; } ;
struct TYPE_4__ {int len; int eid; } ;
struct rrm_link_measurement_report {int rsni; int rcpi; TYPE_2__ tpc; int dialog_token; } ;
typedef int report ;


 int MSG_DEBUG ;
 int MSG_ERROR ;
 int MSG_INFO ;
 int WLAN_ACTION_RADIO_MEASUREMENT ;
 int WLAN_EID_TPC_REPORT ;
 int WLAN_RRM_LINK_MEASUREMENT_REPORT ;
 scalar_t__ WPA_COMPLETED ;
 int WPA_DRIVER_FLAGS_TX_POWER_INSERTION ;
 int os_memset (struct rrm_link_measurement_report*,int ,int) ;
 int rssi_to_rcpi (int) ;
 scalar_t__ wpa_drv_send_action (struct wpa_supplicant*,int ,int ,int const*,int ,int ,int ,int ,int ) ;
 int wpa_hexdump_buf (int ,char*,struct wpabuf*) ;
 int wpa_printf (int ,char*) ;
 struct wpabuf* wpabuf_alloc (int) ;
 int wpabuf_free (struct wpabuf*) ;
 int wpabuf_head (struct wpabuf*) ;
 int wpabuf_len (struct wpabuf*) ;
 int wpabuf_put_data (struct wpabuf*,struct rrm_link_measurement_report*,int) ;
 int wpabuf_put_u8 (struct wpabuf*,int ) ;

void wpas_rrm_handle_link_measurement_request(struct wpa_supplicant *wpa_s,
           const u8 *src,
           const u8 *frame, size_t len,
           int rssi)
{
 struct wpabuf *buf;
 const struct rrm_link_measurement_request *req;
 struct rrm_link_measurement_report report;

 if (wpa_s->wpa_state != WPA_COMPLETED) {
  wpa_printf(MSG_INFO,
      "RRM: Ignoring link measurement request. Not associated");
  return;
 }

 if (!wpa_s->rrm.rrm_used) {
  wpa_printf(MSG_INFO,
      "RRM: Ignoring link measurement request. Not RRM network");
  return;
 }

 if (!(wpa_s->drv_rrm_flags & WPA_DRIVER_FLAGS_TX_POWER_INSERTION)) {
  wpa_printf(MSG_INFO,
      "RRM: Measurement report failed. TX power insertion not supported");
  return;
 }

 req = (const struct rrm_link_measurement_request *) frame;
 if (len < sizeof(*req)) {
  wpa_printf(MSG_INFO,
      "RRM: Link measurement report failed. Request too short");
  return;
 }

 os_memset(&report, 0, sizeof(report));
 report.dialog_token = req->dialog_token;
 report.tpc.eid = WLAN_EID_TPC_REPORT;
 report.tpc.len = 2;




 report.rsni = 255;
 report.rcpi = rssi_to_rcpi(rssi);


 buf = wpabuf_alloc(2 + sizeof(report));
 if (buf == ((void*)0)) {
  wpa_printf(MSG_ERROR,
      "RRM: Link measurement report failed. Buffer allocation failed");
  return;
 }

 wpabuf_put_u8(buf, WLAN_ACTION_RADIO_MEASUREMENT);
 wpabuf_put_u8(buf, WLAN_RRM_LINK_MEASUREMENT_REPORT);
 wpabuf_put_data(buf, &report, sizeof(report));
 wpa_hexdump_buf(MSG_DEBUG, "RRM: Link measurement report", buf);

 if (wpa_drv_send_action(wpa_s, wpa_s->assoc_freq, 0, src,
    wpa_s->own_addr, wpa_s->bssid,
    wpabuf_head(buf), wpabuf_len(buf), 0)) {
  wpa_printf(MSG_ERROR,
      "RRM: Link measurement report failed. Send action failed");
 }
 wpabuf_free(buf);
}

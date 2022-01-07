
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpabuf {int dummy; } ;
struct TYPE_2__ {int token; } ;
struct wpa_supplicant {int bssid; int own_addr; int assoc_freq; TYPE_1__ rrm; } ;


 int MSG_ERROR ;
 int WLAN_ACTION_RADIO_MEASUREMENT ;
 int WLAN_RRM_RADIO_MEASUREMENT_REPORT ;
 scalar_t__ wpa_drv_send_action (struct wpa_supplicant*,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int wpa_printf (int ,char*) ;
 struct wpabuf* wpabuf_alloc (size_t) ;
 int wpabuf_free (struct wpabuf*) ;
 int wpabuf_head (struct wpabuf*) ;
 int wpabuf_len (struct wpabuf*) ;
 int wpabuf_put_data (struct wpabuf*,int const*,size_t) ;
 int wpabuf_put_u8 (struct wpabuf*,int ) ;

__attribute__((used)) static void wpas_rrm_send_msr_report_mpdu(struct wpa_supplicant *wpa_s,
       const u8 *data, size_t len)
{
 struct wpabuf *report = wpabuf_alloc(len + 3);

 if (!report)
  return;

 wpabuf_put_u8(report, WLAN_ACTION_RADIO_MEASUREMENT);
 wpabuf_put_u8(report, WLAN_RRM_RADIO_MEASUREMENT_REPORT);
 wpabuf_put_u8(report, wpa_s->rrm.token);

 wpabuf_put_data(report, data, len);

 if (wpa_drv_send_action(wpa_s, wpa_s->assoc_freq, 0, wpa_s->bssid,
    wpa_s->own_addr, wpa_s->bssid,
    wpabuf_head(report), wpabuf_len(report), 0)) {
  wpa_printf(MSG_ERROR,
      "RRM: Radio measurement report failed: Sending Action frame failed");
 }

 wpabuf_free(report);
}

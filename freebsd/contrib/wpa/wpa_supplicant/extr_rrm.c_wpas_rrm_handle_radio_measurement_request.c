
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpabuf {int dummy; } ;
struct TYPE_2__ {int dst_addr; int token; int rrm_used; } ;
struct wpa_supplicant {scalar_t__ wpa_state; TYPE_1__ rrm; } ;


 int ETH_ALEN ;
 int MSG_INFO ;
 scalar_t__ WPA_COMPLETED ;
 int os_memcpy (int ,int const*,int ) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_free (struct wpabuf*) ;
 struct wpabuf* wpas_rrm_process_msr_req_elems (struct wpa_supplicant*,int const*,size_t) ;
 int wpas_rrm_send_msr_report (struct wpa_supplicant*,struct wpabuf*) ;

void wpas_rrm_handle_radio_measurement_request(struct wpa_supplicant *wpa_s,
            const u8 *src, const u8 *dst,
            const u8 *frame, size_t len)
{
 struct wpabuf *report;

 if (wpa_s->wpa_state != WPA_COMPLETED) {
  wpa_printf(MSG_INFO,
      "RRM: Ignoring radio measurement request: Not associated");
  return;
 }

 if (!wpa_s->rrm.rrm_used) {
  wpa_printf(MSG_INFO,
      "RRM: Ignoring radio measurement request: Not RRM network");
  return;
 }

 if (len < 3) {
  wpa_printf(MSG_INFO,
      "RRM: Ignoring too short radio measurement request");
  return;
 }

 wpa_s->rrm.token = *frame;
 os_memcpy(wpa_s->rrm.dst_addr, dst, ETH_ALEN);



 report = wpas_rrm_process_msr_req_elems(wpa_s, frame + 3, len - 3);
 if (!report)
  return;

 wpas_rrm_send_msr_report(wpa_s, report);
 wpabuf_free(report);
}

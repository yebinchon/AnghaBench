
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wpabuf {int dummy; } ;
struct TYPE_4__ {int token; } ;
struct TYPE_3__ {int dst_addr; } ;
struct wpa_supplicant {TYPE_2__ beacon_rep_data; TYPE_1__ rrm; } ;


 int MEASUREMENT_REPORT_MODE_REJECT_REFUSED ;
 int MEASURE_TYPE_BEACON ;
 int MSG_ERROR ;
 int is_multicast_ether_addr (int ) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_free (struct wpabuf*) ;
 int wpas_clear_beacon_rep_data (struct wpa_supplicant*) ;
 scalar_t__ wpas_rrm_report_elem (struct wpabuf**,int ,int ,int ,int *,int ) ;
 int wpas_rrm_send_msr_report (struct wpa_supplicant*,struct wpabuf*) ;

void wpas_rrm_refuse_request(struct wpa_supplicant *wpa_s)
{
 if (!is_multicast_ether_addr(wpa_s->rrm.dst_addr)) {
  struct wpabuf *buf = ((void*)0);

  if (wpas_rrm_report_elem(&buf, wpa_s->beacon_rep_data.token,
      MEASUREMENT_REPORT_MODE_REJECT_REFUSED,
      MEASURE_TYPE_BEACON, ((void*)0), 0)) {
   wpa_printf(MSG_ERROR, "RRM: Memory allocation failed");
   wpabuf_free(buf);
   return;
  }

  wpas_rrm_send_msr_report(wpa_s, buf);
  wpabuf_free(buf);
 }

 wpas_clear_beacon_rep_data(wpa_s);
}

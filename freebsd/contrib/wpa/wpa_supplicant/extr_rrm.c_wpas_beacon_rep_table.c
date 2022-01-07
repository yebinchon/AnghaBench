
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct wpa_supplicant {size_t last_scan_res_used; int * last_scan_res; } ;


 int MSG_DEBUG ;
 int wpa_hexdump_buf (int ,char*,struct wpabuf*) ;
 scalar_t__ wpas_add_beacon_rep (struct wpa_supplicant*,struct wpabuf**,int ,int ,int ) ;
 int wpas_beacon_rep_no_results (struct wpa_supplicant*,struct wpabuf**) ;

__attribute__((used)) static void wpas_beacon_rep_table(struct wpa_supplicant *wpa_s,
      struct wpabuf **buf)
{
 size_t i;

 for (i = 0; i < wpa_s->last_scan_res_used; i++) {
  if (wpas_add_beacon_rep(wpa_s, buf, wpa_s->last_scan_res[i],
     0, 0) < 0)
   break;
 }

 if (!(*buf))
  wpas_beacon_rep_no_results(wpa_s, buf);

 wpa_hexdump_buf(MSG_DEBUG, "RRM: Radio Measurement report", *buf);
}

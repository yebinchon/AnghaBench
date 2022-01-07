
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct wpabuf {int dummy; } ;
struct TYPE_4__ {int next_neighbor_rep_token; int * neighbor_rep_cb_ctx; int (* notify_neighbor_rep ) (int *,struct wpabuf*) ;} ;
struct wpa_supplicant {TYPE_1__ rrm; } ;


 int MSG_DEBUG ;
 int MSG_ERROR ;
 int eloop_cancel_timeout (int (*) (TYPE_1__*,int *),TYPE_1__*,int *) ;
 int stub1 (int *,struct wpabuf*) ;
 int wpa_hexdump (int ,char*,int const*,size_t) ;
 int wpa_printf (int ,char*,...) ;
 struct wpabuf* wpabuf_alloc (size_t) ;
 int wpabuf_put_data (struct wpabuf*,int const*,size_t) ;
 int wpas_rrm_neighbor_rep_timeout_handler (TYPE_1__*,int *) ;

void wpas_rrm_process_neighbor_rep(struct wpa_supplicant *wpa_s,
       const u8 *report, size_t report_len)
{
 struct wpabuf *neighbor_rep;

 wpa_hexdump(MSG_DEBUG, "RRM: New Neighbor Report", report, report_len);
 if (report_len < 1)
  return;

 if (report[0] != wpa_s->rrm.next_neighbor_rep_token - 1) {
  wpa_printf(MSG_DEBUG,
      "RRM: Discarding neighbor report with token %d (expected %d)",
      report[0], wpa_s->rrm.next_neighbor_rep_token - 1);
  return;
 }

 eloop_cancel_timeout(wpas_rrm_neighbor_rep_timeout_handler, &wpa_s->rrm,
        ((void*)0));

 if (!wpa_s->rrm.notify_neighbor_rep) {
  wpa_printf(MSG_ERROR, "RRM: Unexpected neighbor report");
  return;
 }


 neighbor_rep = wpabuf_alloc(report_len - 1);
 if (!neighbor_rep) {
  wpas_rrm_neighbor_rep_timeout_handler(&wpa_s->rrm, ((void*)0));
  return;
 }
 wpabuf_put_data(neighbor_rep, report + 1, report_len - 1);
 wpa_printf(MSG_DEBUG, "RRM: Notifying neighbor report (token = %d)",
     report[0]);
 wpa_s->rrm.notify_neighbor_rep(wpa_s->rrm.neighbor_rep_cb_ctx,
           neighbor_rep);
 wpa_s->rrm.notify_neighbor_rep = ((void*)0);
 wpa_s->rrm.neighbor_rep_cb_ctx = ((void*)0);
}

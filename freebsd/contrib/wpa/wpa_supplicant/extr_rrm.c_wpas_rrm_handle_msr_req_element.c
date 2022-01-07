
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpabuf {int dummy; } ;
struct TYPE_2__ {int dst_addr; } ;
struct wpa_supplicant {int drv_rrm_flags; TYPE_1__ rrm; } ;
struct rrm_measurement_request_element {int type; int mode; int token; int len; scalar_t__ variable; } ;


 int MEASUREMENT_REPORT_MODE_REJECT_INCAPABLE ;
 int MEASUREMENT_REQUEST_MODE_DURATION_MANDATORY ;
 int MEASUREMENT_REQUEST_MODE_ENABLE ;
 int MEASUREMENT_REQUEST_MODE_PARALLEL ;


 int MEASURE_TYPE_RPI_HIST ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int WPA_DRIVER_FLAGS_SUPPORT_SET_SCAN_DWELL ;
 int is_multicast_ether_addr (int ) ;
 int wpa_printf (int ,char*,...) ;
 int wpas_rm_handle_beacon_req (struct wpa_supplicant*,int ,int,void const*,int ,struct wpabuf**) ;
 int wpas_rrm_build_lci_report (struct wpa_supplicant*,struct rrm_measurement_request_element const*,struct wpabuf**) ;
 scalar_t__ wpas_rrm_report_elem (struct wpabuf**,int ,int ,int,int *,int ) ;

__attribute__((used)) static int
wpas_rrm_handle_msr_req_element(
 struct wpa_supplicant *wpa_s,
 const struct rrm_measurement_request_element *req,
 struct wpabuf **buf)
{
 int duration_mandatory;

 wpa_printf(MSG_DEBUG, "Measurement request type %d token %d",
     req->type, req->token);

 if (req->mode & MEASUREMENT_REQUEST_MODE_ENABLE) {

  wpa_printf(MSG_DEBUG, "RRM: Enable bit not supported, ignore");
  return 0;
 }

 if ((req->mode & MEASUREMENT_REQUEST_MODE_PARALLEL) &&
     req->type > MEASURE_TYPE_RPI_HIST) {

  wpa_printf(MSG_DEBUG,
      "RRM: Parallel measurements are not supported, reject");
  goto reject;
 }

 duration_mandatory =
  !!(req->mode & MEASUREMENT_REQUEST_MODE_DURATION_MANDATORY);

 switch (req->type) {
 case 128:
  return wpas_rrm_build_lci_report(wpa_s, req, buf);
 case 129:
  if (duration_mandatory &&
      !(wpa_s->drv_rrm_flags &
        WPA_DRIVER_FLAGS_SUPPORT_SET_SCAN_DWELL)) {
   wpa_printf(MSG_DEBUG,
       "RRM: Driver does not support dwell time configuration - reject beacon report with mandatory duration");
   goto reject;
  }
  return wpas_rm_handle_beacon_req(wpa_s, req->token,
       duration_mandatory,
       (const void *) req->variable,
       req->len - 3, buf);
 default:
  wpa_printf(MSG_INFO,
      "RRM: Unsupported radio measurement type %u",
      req->type);
  break;
 }

reject:
 if (!is_multicast_ether_addr(wpa_s->rrm.dst_addr) &&
     wpas_rrm_report_elem(buf, req->token,
     MEASUREMENT_REPORT_MODE_REJECT_INCAPABLE,
     req->type, ((void*)0), 0) < 0) {
  wpa_printf(MSG_DEBUG, "RRM: Failed to add report element");
  return -1;
 }

 return 0;
}

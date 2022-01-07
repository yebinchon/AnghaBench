
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct wps_parse_attr {scalar_t__* msg_type; int * config_error; int * enrollee_nonce; int * registrar_nonce; } ;
struct TYPE_2__ {int mac_addr; } ;
struct wps_data {int state; TYPE_1__ peer_dev; int error_indication; int wps; int * nonce_e; int * nonce_r; } ;
struct wpabuf {int dummy; } ;
typedef enum wps_process_res { ____Placeholder_wps_process_res } wps_process_res ;


 int MSG_DEBUG ;



 int SEND_WSC_NACK ;
 scalar_t__ WPA_GET_BE16 (int *) ;
 int WPS_FAILURE ;
 int WPS_M3 ;
 int WPS_M5 ;
 int WPS_M7 ;
 int WPS_NONCE_LEN ;
 scalar_t__ WPS_WSC_NACK ;
 scalar_t__ os_memcmp (int *,int *,int ) ;
 int wpa_hexdump (int ,char*,int *,int ) ;
 int wpa_printf (int ,char*,...) ;
 int wps_fail_event (int ,int ,scalar_t__,int ,int ) ;
 scalar_t__ wps_parse_msg (struct wpabuf const*,struct wps_parse_attr*) ;

__attribute__((used)) static enum wps_process_res wps_process_wsc_nack(struct wps_data *wps,
       const struct wpabuf *msg)
{
 struct wps_parse_attr attr;
 u16 config_error;

 wpa_printf(MSG_DEBUG, "WPS: Received WSC_NACK");

 if (wps_parse_msg(msg, &attr) < 0)
  return WPS_FAILURE;

 if (attr.msg_type == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "WPS: No Message Type attribute");
  return WPS_FAILURE;
 }

 if (*attr.msg_type != WPS_WSC_NACK) {
  wpa_printf(MSG_DEBUG, "WPS: Invalid Message Type %d",
      *attr.msg_type);
  return WPS_FAILURE;
 }

 if (attr.registrar_nonce == ((void*)0) ||
     os_memcmp(wps->nonce_r, attr.registrar_nonce, WPS_NONCE_LEN) != 0)
 {
  wpa_printf(MSG_DEBUG, "WPS: Mismatch in registrar nonce");
  wpa_hexdump(MSG_DEBUG, "WPS: Received Registrar Nonce",
       attr.registrar_nonce, WPS_NONCE_LEN);
  wpa_hexdump(MSG_DEBUG, "WPS: Expected Registrar Nonce",
       wps->nonce_r, WPS_NONCE_LEN);
  return WPS_FAILURE;
 }

 if (attr.enrollee_nonce == ((void*)0) ||
     os_memcmp(wps->nonce_e, attr.enrollee_nonce, WPS_NONCE_LEN) != 0) {
  wpa_printf(MSG_DEBUG, "WPS: Mismatch in enrollee nonce");
  wpa_hexdump(MSG_DEBUG, "WPS: Received Enrollee Nonce",
       attr.enrollee_nonce, WPS_NONCE_LEN);
  wpa_hexdump(MSG_DEBUG, "WPS: Expected Enrollee Nonce",
       wps->nonce_e, WPS_NONCE_LEN);
  return WPS_FAILURE;
 }

 if (attr.config_error == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "WPS: No Configuration Error attribute "
      "in WSC_NACK");
  return WPS_FAILURE;
 }

 config_error = WPA_GET_BE16(attr.config_error);
 wpa_printf(MSG_DEBUG, "WPS: Registrar terminated negotiation with "
     "Configuration Error %d", config_error);

 switch (wps->state) {
 case 130:
  wps_fail_event(wps->wps, WPS_M3, config_error,
          wps->error_indication, wps->peer_dev.mac_addr);
  break;
 case 129:
  wps_fail_event(wps->wps, WPS_M5, config_error,
          wps->error_indication, wps->peer_dev.mac_addr);
  break;
 case 128:
  wps_fail_event(wps->wps, WPS_M7, config_error,
          wps->error_indication, wps->peer_dev.mac_addr);
  break;
 default:
  break;
 }



 wps->state = SEND_WSC_NACK;

 return WPS_FAILURE;
}

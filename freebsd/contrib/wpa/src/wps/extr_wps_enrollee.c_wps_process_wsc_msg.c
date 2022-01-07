
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wps_parse_attr {int* msg_type; int * enrollee_nonce; } ;
struct TYPE_2__ {int mac_addr; } ;
struct wps_data {int last_msg; TYPE_1__ peer_dev; int error_indication; int config_error; int wps; int state; int nonce_e; } ;
struct wpabuf {int dummy; } ;
typedef enum wps_process_res { ____Placeholder_wps_process_res } wps_process_res ;


 int MSG_DEBUG ;
 int SEND_WSC_NACK ;
 int WPS_CONTINUE ;
 int WPS_FAILURE ;





 int WPS_NONCE_LEN ;
 scalar_t__ os_memcmp (int ,int *,int ) ;
 int wpa_printf (int ,char*,...) ;
 int wpabuf_dup (struct wpabuf const*) ;
 int wpabuf_free (int ) ;
 int wps_fail_event (int ,int const,int ,int ,int ) ;
 scalar_t__ wps_parse_msg (struct wpabuf const*,struct wps_parse_attr*) ;
 int wps_process_m2 (struct wps_data*,struct wpabuf const*,struct wps_parse_attr*) ;
 int wps_process_m2d (struct wps_data*,struct wps_parse_attr*) ;
 int wps_process_m4 (struct wps_data*,struct wpabuf const*,struct wps_parse_attr*) ;
 int wps_process_m6 (struct wps_data*,struct wpabuf const*,struct wps_parse_attr*) ;
 int wps_process_m8 (struct wps_data*,struct wpabuf const*,struct wps_parse_attr*) ;
 int wps_validate_m2 (struct wpabuf const*) ;
 int wps_validate_m2d (struct wpabuf const*) ;
 int wps_validate_m4 (struct wpabuf const*) ;
 int wps_validate_m6 (struct wpabuf const*) ;
 int wps_validate_m8 (struct wpabuf const*) ;

__attribute__((used)) static enum wps_process_res wps_process_wsc_msg(struct wps_data *wps,
      const struct wpabuf *msg)
{
 struct wps_parse_attr attr;
 enum wps_process_res ret = WPS_CONTINUE;

 wpa_printf(MSG_DEBUG, "WPS: Received WSC_MSG");

 if (wps_parse_msg(msg, &attr) < 0)
  return WPS_FAILURE;

 if (attr.enrollee_nonce == ((void*)0) ||
     os_memcmp(wps->nonce_e, attr.enrollee_nonce, WPS_NONCE_LEN) != 0) {
  wpa_printf(MSG_DEBUG, "WPS: Mismatch in enrollee nonce");
  return WPS_FAILURE;
 }

 if (attr.msg_type == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "WPS: No Message Type attribute");
  wps->state = SEND_WSC_NACK;
  return WPS_CONTINUE;
 }

 switch (*attr.msg_type) {
 case 132:
  if (wps_validate_m2(msg) < 0)
   return WPS_FAILURE;
  ret = wps_process_m2(wps, msg, &attr);
  break;
 case 131:
  if (wps_validate_m2d(msg) < 0)
   return WPS_FAILURE;
  ret = wps_process_m2d(wps, &attr);
  break;
 case 130:
  if (wps_validate_m4(msg) < 0)
   return WPS_FAILURE;
  ret = wps_process_m4(wps, msg, &attr);
  if (ret == WPS_FAILURE || wps->state == SEND_WSC_NACK)
   wps_fail_event(wps->wps, 130, wps->config_error,
           wps->error_indication,
           wps->peer_dev.mac_addr);
  break;
 case 129:
  if (wps_validate_m6(msg) < 0)
   return WPS_FAILURE;
  ret = wps_process_m6(wps, msg, &attr);
  if (ret == WPS_FAILURE || wps->state == SEND_WSC_NACK)
   wps_fail_event(wps->wps, 129, wps->config_error,
           wps->error_indication,
           wps->peer_dev.mac_addr);
  break;
 case 128:
  if (wps_validate_m8(msg) < 0)
   return WPS_FAILURE;
  ret = wps_process_m8(wps, msg, &attr);
  if (ret == WPS_FAILURE || wps->state == SEND_WSC_NACK)
   wps_fail_event(wps->wps, 128, wps->config_error,
           wps->error_indication,
           wps->peer_dev.mac_addr);
  break;
 default:
  wpa_printf(MSG_DEBUG, "WPS: Unsupported Message Type %d",
      *attr.msg_type);
  return WPS_FAILURE;
 }
 if (ret == WPS_CONTINUE && *attr.msg_type != 131) {


  wpabuf_free(wps->last_msg);
  wps->last_msg = wpabuf_dup(msg);
 }

 return ret;
}

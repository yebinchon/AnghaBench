
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wps_parse_attr {int* msg_type; int mac_addr; int * registrar_nonce; } ;
struct wps_data {int last_msg; int mac_addr_e; int error_indication; int config_error; TYPE_1__* wps; int state; int nonce_r; } ;
struct wpabuf {int dummy; } ;
typedef enum wps_process_res { ____Placeholder_wps_process_res } wps_process_res ;
struct TYPE_2__ {int wps_upnp; int * upnp_msgs; } ;


 int MSG_DEBUG ;
 int SEND_WSC_NACK ;
 int UPNP_WPS_WLANEVENT_TYPE_EAP ;
 int WPS_CONTINUE ;
 int WPS_FAILURE ;




 int WPS_NONCE_LEN ;
 scalar_t__ os_memcmp (int ,int *,int ) ;
 int upnp_wps_device_send_wlan_event (int ,int ,int ,struct wpabuf const*) ;
 int wpa_printf (int ,char*,...) ;
 int wpabuf_dup (struct wpabuf const*) ;
 int wpabuf_free (int ) ;
 int wps_fail_event (TYPE_1__*,int const,int ,int ,int ) ;
 int wps_free_pending_msgs (int *) ;
 scalar_t__ wps_parse_msg (struct wpabuf const*,struct wps_parse_attr*) ;
 int wps_process_m1 (struct wps_data*,struct wps_parse_attr*) ;
 int wps_process_m3 (struct wps_data*,struct wpabuf const*,struct wps_parse_attr*) ;
 int wps_process_m5 (struct wps_data*,struct wpabuf const*,struct wps_parse_attr*) ;
 int wps_process_m7 (struct wps_data*,struct wpabuf const*,struct wps_parse_attr*) ;
 int wps_validate_m1 (struct wpabuf const*) ;
 int wps_validate_m3 (struct wpabuf const*) ;
 int wps_validate_m5 (struct wpabuf const*) ;
 int wps_validate_m7 (struct wpabuf const*) ;

__attribute__((used)) static enum wps_process_res wps_process_wsc_msg(struct wps_data *wps,
      const struct wpabuf *msg)
{
 struct wps_parse_attr attr;
 enum wps_process_res ret = WPS_CONTINUE;

 wpa_printf(MSG_DEBUG, "WPS: Received WSC_MSG");

 if (wps_parse_msg(msg, &attr) < 0)
  return WPS_FAILURE;

 if (attr.msg_type == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "WPS: No Message Type attribute");
  wps->state = SEND_WSC_NACK;
  return WPS_CONTINUE;
 }

 if (*attr.msg_type != 131 &&
     (attr.registrar_nonce == ((void*)0) ||
      os_memcmp(wps->nonce_r, attr.registrar_nonce,
         WPS_NONCE_LEN) != 0)) {
  wpa_printf(MSG_DEBUG, "WPS: Mismatch in registrar nonce");
  return WPS_FAILURE;
 }

 switch (*attr.msg_type) {
 case 131:
  if (wps_validate_m1(msg) < 0)
   return WPS_FAILURE;
  ret = wps_process_m1(wps, &attr);
  break;
 case 130:
  if (wps_validate_m3(msg) < 0)
   return WPS_FAILURE;
  ret = wps_process_m3(wps, msg, &attr);
  if (ret == WPS_FAILURE || wps->state == SEND_WSC_NACK)
   wps_fail_event(wps->wps, 130, wps->config_error,
           wps->error_indication, wps->mac_addr_e);
  break;
 case 129:
  if (wps_validate_m5(msg) < 0)
   return WPS_FAILURE;
  ret = wps_process_m5(wps, msg, &attr);
  if (ret == WPS_FAILURE || wps->state == SEND_WSC_NACK)
   wps_fail_event(wps->wps, 129, wps->config_error,
           wps->error_indication, wps->mac_addr_e);
  break;
 case 128:
  if (wps_validate_m7(msg) < 0)
   return WPS_FAILURE;
  ret = wps_process_m7(wps, msg, &attr);
  if (ret == WPS_FAILURE || wps->state == SEND_WSC_NACK)
   wps_fail_event(wps->wps, 128, wps->config_error,
           wps->error_indication, wps->mac_addr_e);
  break;
 default:
  wpa_printf(MSG_DEBUG, "WPS: Unsupported Message Type %d",
      *attr.msg_type);
  return WPS_FAILURE;
 }

 if (ret == WPS_CONTINUE) {


  wpabuf_free(wps->last_msg);
  wps->last_msg = wpabuf_dup(msg);
 }

 return ret;
}

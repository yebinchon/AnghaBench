
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_parse_attr {scalar_t__* msg_type; } ;
struct wps_data {int dummy; } ;
struct wpabuf {int dummy; } ;
typedef enum wsc_op_code { ____Placeholder_wsc_op_code } wsc_op_code ;
typedef enum wps_process_res { ____Placeholder_wps_process_res } wps_process_res ;


 int MSG_DEBUG ;
 int WPS_FAILURE ;
 scalar_t__ WPS_WSC_ACK ;
 scalar_t__ WPS_WSC_NACK ;




 int wpa_printf (int ,char*,int,...) ;
 scalar_t__ wpabuf_len (struct wpabuf const*) ;
 scalar_t__ wps_parse_msg (struct wpabuf const*,struct wps_parse_attr*) ;
 int wps_process_wsc_ack (struct wps_data*,struct wpabuf const*) ;
 int wps_process_wsc_msg (struct wps_data*,struct wpabuf const*) ;
 int wps_process_wsc_nack (struct wps_data*,struct wpabuf const*) ;
 int wps_validate_wsc_ack (struct wpabuf const*) ;
 int wps_validate_wsc_nack (struct wpabuf const*) ;

enum wps_process_res wps_enrollee_process_msg(struct wps_data *wps,
           enum wsc_op_code op_code,
           const struct wpabuf *msg)
{

 wpa_printf(MSG_DEBUG, "WPS: Processing received message (len=%lu "
     "op_code=%d)",
     (unsigned long) wpabuf_len(msg), op_code);

 if (op_code == 128) {

  struct wps_parse_attr attr;
  if (wps_parse_msg(msg, &attr) == 0 && attr.msg_type) {
   if (*attr.msg_type == WPS_WSC_ACK)
    op_code = 131;
   else if (*attr.msg_type == WPS_WSC_NACK)
    op_code = 129;
  }
 }

 switch (op_code) {
 case 130:
 case 128:
  return wps_process_wsc_msg(wps, msg);
 case 131:
  if (wps_validate_wsc_ack(msg) < 0)
   return WPS_FAILURE;
  return wps_process_wsc_ack(wps, msg);
 case 129:
  if (wps_validate_wsc_nack(msg) < 0)
   return WPS_FAILURE;
  return wps_process_wsc_nack(wps, msg);
 default:
  wpa_printf(MSG_DEBUG, "WPS: Unsupported op_code %d", op_code);
  return WPS_FAILURE;
 }
}

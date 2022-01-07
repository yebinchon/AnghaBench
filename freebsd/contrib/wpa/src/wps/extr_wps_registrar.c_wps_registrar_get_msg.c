
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wps_data {int ext_reg; int state; int last_msg; TYPE_1__* wps; int int_reg; } ;
struct wpabuf {int dummy; } ;
struct upnp_pending_message {int type; struct wpabuf* msg; struct upnp_pending_message* next; } ;
typedef enum wsc_op_code { ____Placeholder_wsc_op_code } wsc_op_code ;
struct TYPE_2__ {struct upnp_pending_message* upnp_msgs; scalar_t__ wps_upnp; } ;


 int MSG_DEBUG ;
 int WSC_ACK ;
 int WSC_MSG ;
 int WSC_NACK ;
 int os_free (struct upnp_pending_message*) ;
 int wpa_printf (int ,char*,...) ;
 int wpabuf_dup (struct wpabuf*) ;
 int wpabuf_free (int ) ;
 struct wpabuf* wps_build_m2 (struct wps_data*) ;
 struct wpabuf* wps_build_m2d (struct wps_data*) ;
 struct wpabuf* wps_build_m4 (struct wps_data*) ;
 struct wpabuf* wps_build_m6 (struct wps_data*) ;
 struct wpabuf* wps_build_m8 (struct wps_data*) ;
 struct wpabuf* wps_build_wsc_ack (struct wps_data*) ;
 struct wpabuf* wps_build_wsc_nack (struct wps_data*) ;
 int wps_get_dev_password (struct wps_data*) ;
 int wps_registrar_free_pending_m2 (TYPE_1__*) ;

struct wpabuf * wps_registrar_get_msg(struct wps_data *wps,
          enum wsc_op_code *op_code)
{
 struct wpabuf *msg;
 switch (wps->state) {
 case 135:
  if (wps_get_dev_password(wps) < 0)
   msg = wps_build_m2d(wps);
  else
   msg = wps_build_m2(wps);
  *op_code = WSC_MSG;
  break;
 case 134:
  msg = wps_build_m2d(wps);
  *op_code = WSC_MSG;
  break;
 case 133:
  msg = wps_build_m4(wps);
  *op_code = WSC_MSG;
  break;
 case 132:
  msg = wps_build_m6(wps);
  *op_code = WSC_MSG;
  break;
 case 131:
  msg = wps_build_m8(wps);
  *op_code = WSC_MSG;
  break;
 case 136:
  msg = wps_build_wsc_ack(wps);
  *op_code = WSC_ACK;
  break;
 case 130:
  msg = wps_build_wsc_nack(wps);
  *op_code = WSC_NACK;
  break;
 default:
  wpa_printf(MSG_DEBUG, "WPS: Unsupported state %d for building "
      "a message", wps->state);
  msg = ((void*)0);
  break;
 }

 if (*op_code == WSC_MSG && msg) {


  wpabuf_free(wps->last_msg);
  wps->last_msg = wpabuf_dup(msg);
 }

 return msg;
}

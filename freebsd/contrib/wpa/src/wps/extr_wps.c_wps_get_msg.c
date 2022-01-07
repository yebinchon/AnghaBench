
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_data {scalar_t__ registrar; } ;
struct wpabuf {int dummy; } ;
typedef enum wsc_op_code { ____Placeholder_wsc_op_code } wsc_op_code ;


 struct wpabuf* wps_enrollee_get_msg (struct wps_data*,int*) ;
 struct wpabuf* wps_registrar_get_msg (struct wps_data*,int*) ;

struct wpabuf * wps_get_msg(struct wps_data *wps, enum wsc_op_code *op_code)
{
 if (wps->registrar)
  return wps_registrar_get_msg(wps, op_code);
 else
  return wps_enrollee_get_msg(wps, op_code);
}

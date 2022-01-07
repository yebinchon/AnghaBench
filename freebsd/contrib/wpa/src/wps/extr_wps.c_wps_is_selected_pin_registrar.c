
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_parse_attr {int dummy; } ;
struct wpabuf {int dummy; } ;


 int is_selected_pin_registrar (struct wps_parse_attr*) ;
 scalar_t__ wps_parse_msg (struct wpabuf const*,struct wps_parse_attr*) ;

int wps_is_selected_pin_registrar(const struct wpabuf *msg)
{
 struct wps_parse_attr attr;

 if (wps_parse_msg(msg, &attr) < 0)
  return 0;

 return is_selected_pin_registrar(&attr);
}

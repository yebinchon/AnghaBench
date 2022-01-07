
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wps_parse_attr {int const* uuid_e; } ;
struct wpabuf {int dummy; } ;


 scalar_t__ wps_parse_msg (struct wpabuf const*,struct wps_parse_attr*) ;

const u8 * wps_get_uuid_e(const struct wpabuf *msg)
{
 struct wps_parse_attr attr;

 if (wps_parse_msg(msg, &attr) < 0)
  return ((void*)0);
 return attr.uuid_e;
}

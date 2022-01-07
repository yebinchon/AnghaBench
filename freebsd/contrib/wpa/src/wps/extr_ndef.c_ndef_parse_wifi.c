
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;


 struct wpabuf* ndef_parse_records (struct wpabuf const*,int ) ;
 int wifi_filter ;

struct wpabuf * ndef_parse_wifi(const struct wpabuf *buf)
{
 return ndef_parse_records(buf, wifi_filter);
}

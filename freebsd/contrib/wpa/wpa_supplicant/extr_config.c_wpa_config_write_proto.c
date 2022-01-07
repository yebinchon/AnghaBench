
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ssid {int proto; } ;
struct parse_data {int dummy; } ;


 int WPA_PROTO_OSEN ;
 int WPA_PROTO_RSN ;
 int WPA_PROTO_WPA ;
 int os_free (char*) ;
 int os_snprintf (char*,int,char*,char*) ;
 scalar_t__ os_snprintf_error (int,int) ;
 char* os_zalloc (int) ;

__attribute__((used)) static char * wpa_config_write_proto(const struct parse_data *data,
         struct wpa_ssid *ssid)
{
 int ret;
 char *buf, *pos, *end;

 pos = buf = os_zalloc(20);
 if (buf == ((void*)0))
  return ((void*)0);
 end = buf + 20;

 if (ssid->proto & WPA_PROTO_WPA) {
  ret = os_snprintf(pos, end - pos, "%sWPA",
      pos == buf ? "" : " ");
  if (os_snprintf_error(end - pos, ret))
   return buf;
  pos += ret;
 }

 if (ssid->proto & WPA_PROTO_RSN) {
  ret = os_snprintf(pos, end - pos, "%sRSN",
      pos == buf ? "" : " ");
  if (os_snprintf_error(end - pos, ret))
   return buf;
  pos += ret;
 }

 if (ssid->proto & WPA_PROTO_OSEN) {
  ret = os_snprintf(pos, end - pos, "%sOSEN",
      pos == buf ? "" : " ");
  if (os_snprintf_error(end - pos, ret))
   return buf;
  pos += ret;
 }

 if (pos == buf) {
  os_free(buf);
  buf = ((void*)0);
 }

 return buf;
}

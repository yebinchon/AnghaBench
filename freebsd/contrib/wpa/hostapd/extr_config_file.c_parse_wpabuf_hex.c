
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;


 int MSG_ERROR ;
 int wpa_printf (int ,char*,int,char const*,char const*) ;
 int wpabuf_free (struct wpabuf*) ;
 struct wpabuf* wpabuf_parse_bin (char const*) ;

__attribute__((used)) static int parse_wpabuf_hex(int line, const char *name, struct wpabuf **buf,
       const char *val)
{
 struct wpabuf *elems;

 if (val[0] == '\0') {
  wpabuf_free(*buf);
  *buf = ((void*)0);
  return 0;
 }

 elems = wpabuf_parse_bin(val);
 if (!elems) {
  wpa_printf(MSG_ERROR, "Line %d: Invalid %s '%s'",
      line, name, val);
  return -1;
 }

 wpabuf_free(*buf);
 *buf = elems;

 return 0;
}

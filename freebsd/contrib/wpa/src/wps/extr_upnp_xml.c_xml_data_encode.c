
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;
struct wpabuf {int dummy; } ;


 int wpabuf_put_str (struct wpabuf*,char*) ;
 int wpabuf_put_u8 (struct wpabuf*,char) ;

void xml_data_encode(struct wpabuf *buf, const char *data, int len)
{
 int i;
 for (i = 0; i < len; i++) {
  u8 c = ((u8 *) data)[i];
  if (c == '<') {
   wpabuf_put_str(buf, "&lt;");
   continue;
  }
  if (c == '>') {
   wpabuf_put_str(buf, "&gt;");
   continue;
  }
  if (c == '&') {
   wpabuf_put_str(buf, "&amp;");
   continue;
  }
  if (c == '\'') {
   wpabuf_put_str(buf, "&apos;");
   continue;
  }
  if (c == '"') {
   wpabuf_put_str(buf, "&quot;");
   continue;
  }





  wpabuf_put_u8(buf, c);
 }
}

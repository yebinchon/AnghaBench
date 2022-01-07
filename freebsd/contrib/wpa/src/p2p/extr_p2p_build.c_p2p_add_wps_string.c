
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
typedef enum wps_attribute { ____Placeholder_wps_attribute } wps_attribute ;


 size_t os_strlen (char const*) ;
 int wpabuf_put_be16 (struct wpabuf*,size_t) ;
 int wpabuf_put_data (struct wpabuf*,char const*,size_t) ;
 int wpabuf_put_u8 (struct wpabuf*,char) ;
 int wpabuf_tailroom (struct wpabuf*) ;

__attribute__((used)) static int p2p_add_wps_string(struct wpabuf *buf, enum wps_attribute attr,
         const char *val)
{
 size_t len;

 len = val ? os_strlen(val) : 0;
 if (wpabuf_tailroom(buf) < 4 + len)
  return -1;
 wpabuf_put_be16(buf, attr);

 if (len == 0) {





  if (wpabuf_tailroom(buf) < 3)
   return -1;
  wpabuf_put_be16(buf, 1);
  wpabuf_put_u8(buf, ' ');
  return 0;
 }

 wpabuf_put_be16(buf, len);
 if (val)
  wpabuf_put_data(buf, val, len);
 return 0;
}

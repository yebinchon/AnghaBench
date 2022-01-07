
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;


 scalar_t__ hexstr2bin (char const*,int ,size_t) ;
 size_t os_strlen (char const*) ;
 struct wpabuf* wpabuf_alloc (size_t) ;
 int wpabuf_free (struct wpabuf*) ;
 int wpabuf_put (struct wpabuf*,size_t) ;

struct wpabuf * wpabuf_parse_bin(const char *buf)
{
 size_t len;
 struct wpabuf *ret;

 len = os_strlen(buf);
 if (len & 0x01)
  return ((void*)0);
 len /= 2;

 ret = wpabuf_alloc(len);
 if (ret == ((void*)0))
  return ((void*)0);

 if (hexstr2bin(buf, wpabuf_put(ret, len), len)) {
  wpabuf_free(ret);
  return ((void*)0);
 }

 return ret;
}

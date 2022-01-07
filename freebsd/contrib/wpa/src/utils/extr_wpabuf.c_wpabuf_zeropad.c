
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;


 int os_memset (int ,int ,size_t) ;
 struct wpabuf* wpabuf_alloc (size_t) ;
 int wpabuf_free (struct wpabuf*) ;
 size_t wpabuf_len (struct wpabuf*) ;
 int wpabuf_put (struct wpabuf*,size_t) ;
 int wpabuf_put_buf (struct wpabuf*,struct wpabuf*) ;

struct wpabuf * wpabuf_zeropad(struct wpabuf *buf, size_t len)
{
 struct wpabuf *ret;
 size_t blen;

 if (buf == ((void*)0))
  return ((void*)0);

 blen = wpabuf_len(buf);
 if (blen >= len)
  return buf;

 ret = wpabuf_alloc(len);
 if (ret) {
  os_memset(wpabuf_put(ret, len - blen), 0, len - blen);
  wpabuf_put_buf(ret, buf);
 }
 wpabuf_free(buf);

 return ret;
}

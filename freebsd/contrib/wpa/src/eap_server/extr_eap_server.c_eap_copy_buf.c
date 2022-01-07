
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;


 struct wpabuf* wpabuf_dup (struct wpabuf const*) ;
 int wpabuf_free (struct wpabuf*) ;

__attribute__((used)) static int eap_copy_buf(struct wpabuf **dst, const struct wpabuf *src)
{
 if (src == ((void*)0))
  return -1;

 wpabuf_free(*dst);
 *dst = wpabuf_dup(src);
 return *dst ? 0 : -1;
}

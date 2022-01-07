
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;


 int wpabuf_len (struct wpabuf const*) ;
 int wpabuf_put_buf (struct wpabuf*,struct wpabuf const*) ;
 scalar_t__ wpabuf_resize (struct wpabuf**,int ) ;

__attribute__((used)) static int add_buf(struct wpabuf **dst, const struct wpabuf *src)
{
 if (!src)
  return 0;
 if (wpabuf_resize(dst, wpabuf_len(src)) != 0)
  return -1;
 wpabuf_put_buf(*dst, src);
 return 0;
}

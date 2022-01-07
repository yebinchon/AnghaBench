
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;


 struct wpabuf* wpabuf_alloc (int ) ;
 int wpabuf_head (struct wpabuf const*) ;
 int wpabuf_len (struct wpabuf const*) ;
 int wpabuf_put_data (struct wpabuf*,int ,int ) ;

struct wpabuf * wpabuf_dup(const struct wpabuf *src)
{
 struct wpabuf *buf = wpabuf_alloc(wpabuf_len(src));
 if (buf)
  wpabuf_put_data(buf, wpabuf_head(src), wpabuf_len(src));
 return buf;
}

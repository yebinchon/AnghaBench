
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {void const* buf; } ;



__attribute__((used)) static inline const void * wpabuf_head(const struct wpabuf *buf)
{
 return buf->buf;
}

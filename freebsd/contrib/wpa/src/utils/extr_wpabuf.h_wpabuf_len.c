
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {size_t used; } ;



__attribute__((used)) static inline size_t wpabuf_len(const struct wpabuf *buf)
{
 return buf->used;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {size_t size; size_t used; int flags; int * buf; } ;


 int WPABUF_FLAG_EXT_DATA ;

__attribute__((used)) static inline void wpabuf_set(struct wpabuf *buf, const void *data, size_t len)
{
 buf->buf = (u8 *) data;
 buf->flags = WPABUF_FLAG_EXT_DATA;
 buf->size = buf->used = len;
}

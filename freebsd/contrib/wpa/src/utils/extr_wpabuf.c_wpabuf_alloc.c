
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf_trace {int magic; } ;
struct wpabuf {size_t size; int * buf; } ;


 int WPABUF_MAGIC ;
 void* os_zalloc (int) ;

struct wpabuf * wpabuf_alloc(size_t len)
{
 struct wpabuf *buf = os_zalloc(sizeof(struct wpabuf) + len);
 if (buf == ((void*)0))
  return ((void*)0);


 buf->size = len;
 buf->buf = (u8 *) (buf + 1);
 return buf;
}

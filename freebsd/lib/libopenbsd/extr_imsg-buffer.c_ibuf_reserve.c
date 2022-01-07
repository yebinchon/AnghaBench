
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibuf {scalar_t__ wpos; scalar_t__ size; void* buf; } ;


 int ibuf_realloc (struct ibuf*,size_t) ;

void *
ibuf_reserve(struct ibuf *buf, size_t len)
{
 void *b;

 if (buf->wpos + len > buf->size)
  if (ibuf_realloc(buf, len) == -1)
   return (((void*)0));

 b = buf->buf + buf->wpos;
 buf->wpos += len;
 return (b);
}

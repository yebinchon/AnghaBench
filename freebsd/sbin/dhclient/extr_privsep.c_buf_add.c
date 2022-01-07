
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buf {scalar_t__ wpos; scalar_t__ size; scalar_t__ buf; } ;


 int memcpy (scalar_t__,void const*,size_t) ;

int
buf_add(struct buf *buf, const void *data, size_t len)
{
 if (buf->wpos + len > buf->size)
  return (-1);

 memcpy(buf->buf + buf->wpos, data, len);
 buf->wpos += len;
 return (0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibuf {size_t wpos; void* buf; } ;



void *
ibuf_seek(struct ibuf *buf, size_t pos, size_t len)
{

 if (pos + len > buf->wpos)
  return (((void*)0));

 return (buf->buf + pos);
}

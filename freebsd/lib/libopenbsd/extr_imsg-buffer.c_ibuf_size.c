
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibuf {size_t wpos; } ;



size_t
ibuf_size(struct ibuf *buf)
{
 return (buf->wpos);
}

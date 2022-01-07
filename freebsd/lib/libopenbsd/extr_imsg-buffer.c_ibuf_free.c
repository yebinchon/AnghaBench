
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibuf {struct ibuf* buf; } ;


 int free (struct ibuf*) ;

void
ibuf_free(struct ibuf *buf)
{
 free(buf->buf);
 free(buf);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ io_error; } ;
typedef TYPE_1__ zio_t ;
typedef int zbookmark_phys_t ;
typedef int blkptr_t ;
struct TYPE_6__ {int * b_data; } ;
typedef TYPE_2__ arc_buf_t ;


 int ASSERT (int) ;

void
arc_getbuf_func(zio_t *zio, const zbookmark_phys_t *zb, const blkptr_t *bp,
    arc_buf_t *buf, void *arg)
{
 arc_buf_t **bufp = arg;
 if (buf == ((void*)0)) {
  ASSERT(zio == ((void*)0) || zio->io_error != 0);
  *bufp = ((void*)0);
 } else {
  ASSERT(zio == ((void*)0) || zio->io_error == 0);
  *bufp = buf;
  ASSERT(buf->b_data != ((void*)0));
 }
}

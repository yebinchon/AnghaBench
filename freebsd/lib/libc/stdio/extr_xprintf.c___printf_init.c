
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ uio_iovcnt; scalar_t__ uio_resid; int * uio_iov; } ;
struct __printf_io {TYPE_1__ uio; int * iov; int * iovp; } ;



__attribute__((used)) static void
__printf_init(struct __printf_io *io)
{

 io->uio.uio_iov = io->iovp = &io->iov[0];
 io->uio.uio_resid = 0;
 io->uio.uio_iovcnt = 0;
}

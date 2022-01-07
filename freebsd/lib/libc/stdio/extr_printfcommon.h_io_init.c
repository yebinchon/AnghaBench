
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ uio_iovcnt; scalar_t__ uio_resid; int uio_iov; } ;
struct io_state {int * fp; TYPE_1__ uio; int iov; } ;
typedef int FILE ;



__attribute__((used)) static inline void
io_init(struct io_state *iop, FILE *fp)
{

 iop->uio.uio_iov = iop->iov;
 iop->uio.uio_resid = 0;
 iop->uio.uio_iovcnt = 0;
 iop->fp = fp;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {size_t uio_iovcnt; int uio_resid; } ;
struct io_state {TYPE_2__ uio; int fp; TYPE_1__* iov; } ;
typedef int locale_t ;
struct TYPE_3__ {char* iov_base; int iov_len; } ;
typedef int CHAR ;


 size_t NIOV ;
 int __sprint (int ,TYPE_2__*,int ) ;

__attribute__((used)) static inline int
io_print(struct io_state *iop, const CHAR * __restrict ptr, int len, locale_t locale)
{

 iop->iov[iop->uio.uio_iovcnt].iov_base = (char *)ptr;
 iop->iov[iop->uio.uio_iovcnt].iov_len = len;
 iop->uio.uio_resid += len;
 if (++iop->uio.uio_iovcnt >= NIOV)
  return (__sprint(iop->fp, &iop->uio, locale));
 else
  return (0);
}

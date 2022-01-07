
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t uio_resid; int uio_segflg; int uio_rw; } ;
typedef TYPE_1__ uio_t ;
typedef enum uio_seg { ____Placeholder_uio_seg } uio_seg ;


 int UIO_NOCOPY ;
 int uiomove (int *,size_t,int ,TYPE_1__*) ;

void
uioskip(uio_t *uio, size_t n)
{
 enum uio_seg segflg;


 if (n > uio->uio_resid)
  return;

 segflg = uio->uio_segflg;
 uio->uio_segflg = UIO_NOCOPY;
 uiomove(((void*)0), n, uio->uio_rw, uio);
 uio->uio_segflg = segflg;
}

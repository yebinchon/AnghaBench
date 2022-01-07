
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
struct uio {scalar_t__ uio_resid; } ;
struct TYPE_2__ {scalar_t__ vaddr; scalar_t__ fill; } ;
struct fpgamgr_s10_softc {scalar_t__ opened; int sx; TYPE_1__ mem; } ;
struct cdev {struct fpgamgr_s10_softc* si_drv1; } ;


 int ENOMEM ;
 int ENXIO ;
 int MIN (scalar_t__,scalar_t__) ;
 scalar_t__ SVC_BUF_SIZE ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;
 int uiomove (void*,int,struct uio*) ;

__attribute__((used)) static int
fpga_write(struct cdev *dev, struct uio *uio, int ioflag)
{
 struct fpgamgr_s10_softc *sc;
 vm_offset_t addr;
 int amnt;

 sc = dev->si_drv1;

 sx_xlock(&sc->sx);
 if (sc->opened == 0) {

  sx_xunlock(&sc->sx);
  return (ENXIO);
 }

 while (uio->uio_resid > 0) {
  addr = sc->mem.vaddr + sc->mem.fill;
  if (sc->mem.fill >= SVC_BUF_SIZE)
   return (ENOMEM);
  amnt = MIN(uio->uio_resid, (SVC_BUF_SIZE - sc->mem.fill));
  uiomove((void *)addr, amnt, uio);
  sc->mem.fill += amnt;
 }

 sx_xunlock(&sc->sx);

 return (0);
}

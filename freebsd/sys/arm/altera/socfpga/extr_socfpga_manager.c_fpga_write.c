
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {scalar_t__ uio_resid; } ;
struct fpgamgr_softc {int bsh_data; int bst_data; } ;
struct cdev {struct fpgamgr_softc* si_drv1; } ;


 int bus_space_write_4 (int ,int ,int,int) ;
 int uiomove (int*,int,struct uio*) ;

__attribute__((used)) static int
fpga_write(struct cdev *dev, struct uio *uio, int ioflag)
{
 struct fpgamgr_softc *sc;
 int buffer;

 sc = dev->si_drv1;






 while (uio->uio_resid > 0) {
  uiomove(&buffer, 4, uio);
  bus_space_write_4(sc->bst_data, sc->bsh_data,
      0x0, buffer);
 }

 return (0);
}

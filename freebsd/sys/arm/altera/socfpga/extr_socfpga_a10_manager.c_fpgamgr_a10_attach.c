
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fpgamgr_a10_softc {TYPE_1__* mgr_cdev; int dev; int * res; int bsh_data; int bst_data; } ;
typedef int device_t ;
struct TYPE_2__ {struct fpgamgr_a10_softc* si_drv1; } ;


 int ENXIO ;
 int GID_WHEEL ;
 int UID_ROOT ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 struct fpgamgr_a10_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 int fpga_cdevsw ;
 int fpgamgr_a10_spec ;
 TYPE_1__* make_dev (int *,int ,int ,int ,int,char*,int ) ;
 int rman_get_bushandle (int ) ;
 int rman_get_bustag (int ) ;

__attribute__((used)) static int
fpgamgr_a10_attach(device_t dev)
{
 struct fpgamgr_a10_softc *sc;

 sc = device_get_softc(dev);
 sc->dev = dev;

 if (bus_alloc_resources(dev, fpgamgr_a10_spec, sc->res)) {
  device_printf(dev, "Could not allocate resources.\n");
  return (ENXIO);
 }


 sc->bst_data = rman_get_bustag(sc->res[1]);
 sc->bsh_data = rman_get_bushandle(sc->res[1]);

 sc->mgr_cdev = make_dev(&fpga_cdevsw, 0, UID_ROOT, GID_WHEEL,
     0600, "fpga%d", device_get_unit(sc->dev));

 if (sc->mgr_cdev == ((void*)0)) {
  device_printf(dev, "Failed to create character device.\n");
  return (ENXIO);
 }

 sc->mgr_cdev->si_drv1 = sc;

 return (0);
}

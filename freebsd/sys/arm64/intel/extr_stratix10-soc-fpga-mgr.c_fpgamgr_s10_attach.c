
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fpgamgr_s10_softc {TYPE_2__* mgr_cdev_partial; TYPE_1__* mgr_cdev; int sx; int dev; int * s10_svc_dev; } ;
typedef int device_t ;
typedef int * devclass_t ;
struct TYPE_4__ {struct fpgamgr_s10_softc* si_drv1; } ;
struct TYPE_3__ {struct fpgamgr_s10_softc* si_drv1; } ;


 int ENXIO ;
 int GID_WHEEL ;
 int UID_ROOT ;
 int * devclass_find (char*) ;
 int * devclass_get_device (int *,int ) ;
 struct fpgamgr_s10_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 int fpga_cdevsw ;
 void* make_dev (int *,int ,int ,int ,int,char*,int ) ;
 int sx_init (int *,char*) ;

__attribute__((used)) static int
fpgamgr_s10_attach(device_t dev)
{
 struct fpgamgr_s10_softc *sc;
 devclass_t dc;

 sc = device_get_softc(dev);
 sc->dev = dev;

 dc = devclass_find("s10_svc");
 if (dc == ((void*)0))
  return (ENXIO);

 sc->s10_svc_dev = devclass_get_device(dc, 0);
 if (sc->s10_svc_dev == ((void*)0))
  return (ENXIO);

 sc->mgr_cdev = make_dev(&fpga_cdevsw, 0, UID_ROOT, GID_WHEEL,
     0600, "fpga%d", device_get_unit(sc->dev));
 if (sc->mgr_cdev == ((void*)0)) {
  device_printf(dev, "Failed to create character device.\n");
  return (ENXIO);
 }

 sc->mgr_cdev_partial = make_dev(&fpga_cdevsw, 0, UID_ROOT, GID_WHEEL,
     0600, "fpga_partial%d", device_get_unit(sc->dev));
 if (sc->mgr_cdev_partial == ((void*)0)) {
  device_printf(dev, "Failed to create character device.\n");
  return (ENXIO);
 }

 sx_init(&sc->sx, "s10 fpga");

 sc->mgr_cdev->si_drv1 = sc;
 sc->mgr_cdev_partial->si_drv1 = sc;

 return (0);
}

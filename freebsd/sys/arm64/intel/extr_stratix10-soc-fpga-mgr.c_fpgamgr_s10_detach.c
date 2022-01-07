
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpgamgr_s10_softc {int sx; int mgr_cdev_partial; int mgr_cdev; } ;
typedef int device_t ;


 int destroy_dev (int ) ;
 struct fpgamgr_s10_softc* device_get_softc (int ) ;
 int sx_destroy (int *) ;

__attribute__((used)) static int
fpgamgr_s10_detach(device_t dev)
{
 struct fpgamgr_s10_softc *sc;

 sc = device_get_softc(dev);

 destroy_dev(sc->mgr_cdev);
 destroy_dev(sc->mgr_cdev_partial);

 sx_destroy(&sc->sx);

 return (0);
}

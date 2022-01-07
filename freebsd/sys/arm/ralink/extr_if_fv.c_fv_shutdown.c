
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fv_softc {int dummy; } ;
typedef int device_t ;


 int FV_LOCK (struct fv_softc*) ;
 int FV_UNLOCK (struct fv_softc*) ;
 struct fv_softc* device_get_softc (int ) ;
 int fv_stop (struct fv_softc*) ;

__attribute__((used)) static int
fv_shutdown(device_t dev)
{
 struct fv_softc *sc;

 sc = device_get_softc(dev);

 FV_LOCK(sc);
 fv_stop(sc);
 FV_UNLOCK(sc);

 return (0);
}

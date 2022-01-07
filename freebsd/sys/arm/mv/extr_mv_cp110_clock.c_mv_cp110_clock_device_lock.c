
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv_cp110_clock_softc {int mtx; } ;
typedef int device_t ;


 struct mv_cp110_clock_softc* device_get_softc (int ) ;
 int mtx_lock (int *) ;

__attribute__((used)) static void
mv_cp110_clock_device_lock(device_t dev)
{
 struct mv_cp110_clock_softc *sc;

 sc = device_get_softc(dev);
 mtx_lock(&sc->mtx);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv_rtc_softc {int res; int mutex; } ;
typedef int device_t ;


 int bus_release_resources (int ,int ,int ) ;
 struct mv_rtc_softc* device_get_softc (int ) ;
 int mtx_destroy (int *) ;
 int res_spec ;

__attribute__((used)) static int
mv_rtc_detach(device_t dev)
{
 struct mv_rtc_softc *sc;

 sc = device_get_softc(dev);

 mtx_destroy(&sc->mutex);

 bus_release_resources(dev, res_spec, sc->res);

 return (0);
}

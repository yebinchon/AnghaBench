
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra124_car_softc {int mtx; } ;
typedef int device_t ;


 struct tegra124_car_softc* device_get_softc (int ) ;
 int mtx_lock (int *) ;

__attribute__((used)) static void
tegra124_car_clkdev_device_lock(device_t dev)
{
 struct tegra124_car_softc *sc;

 sc = device_get_softc(dev);
 mtx_lock(&sc->mtx);
}

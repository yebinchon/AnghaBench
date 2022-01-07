
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra124_car_softc {int dummy; } ;
typedef int device_t ;


 struct tegra124_car_softc* device_get_softc (int ) ;
 int tegra124_hwreset_by_idx (struct tegra124_car_softc*,intptr_t,int) ;

__attribute__((used)) static int
tegra124_car_hwreset_assert(device_t dev, intptr_t id, bool value)
{
 struct tegra124_car_softc *sc = device_get_softc(dev);

 return (tegra124_hwreset_by_idx(sc, id, value));
}

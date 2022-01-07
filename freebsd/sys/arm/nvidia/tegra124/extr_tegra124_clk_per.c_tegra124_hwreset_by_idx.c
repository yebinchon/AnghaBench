
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tegra124_car_softc {int dev; } ;


 int CLKDEV_DEVICE_LOCK (int ) ;
 int CLKDEV_DEVICE_UNLOCK (int ) ;
 int CLKDEV_MODIFY_4 (int ,int,int,int) ;
 int CLKDEV_READ_4 (int ,int,int*) ;
 int get_reset_reg (intptr_t) ;

int
tegra124_hwreset_by_idx(struct tegra124_car_softc *sc, intptr_t idx, bool reset)
{
 uint32_t reg, mask, reset_reg;

 mask = 1 << (idx % 32);
 reset_reg = get_reset_reg(idx);

 CLKDEV_DEVICE_LOCK(sc->dev);
 CLKDEV_MODIFY_4(sc->dev, reset_reg, mask, reset ? mask : 0);
 CLKDEV_READ_4(sc->dev, reset_reg, &reg);
 CLKDEV_DEVICE_UNLOCK(sc->dev);

 return(0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tegra124_car_softc {int mem_res; } ;
typedef int device_t ;
typedef int bus_addr_t ;


 int bus_read_4 (int ,int ) ;
 int bus_write_4 (int ,int ,int ) ;
 struct tegra124_car_softc* device_get_softc (int ) ;

__attribute__((used)) static int
tegra124_car_clkdev_modify_4(device_t dev, bus_addr_t addr, uint32_t clear_mask,
    uint32_t set_mask)
{
 struct tegra124_car_softc *sc;
 uint32_t reg;

 sc = device_get_softc(dev);
 reg = bus_read_4(sc->mem_res, addr);
 reg &= ~clear_mask;
 reg |= set_mask;
 bus_write_4(sc->mem_res, addr, reg);
 return (0);
}

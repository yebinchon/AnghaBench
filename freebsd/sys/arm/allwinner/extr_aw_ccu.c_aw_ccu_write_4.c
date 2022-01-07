
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct aw_ccu_softc {int bst; int mtx; } ;
typedef int device_t ;
typedef int bus_space_handle_t ;
typedef int bus_size_t ;
typedef int bus_addr_t ;


 int EINVAL ;
 int MA_OWNED ;
 scalar_t__ aw_ccu_check_addr (struct aw_ccu_softc*,int ,int *,int *) ;
 int bus_space_write_4 (int ,int ,int ,int ) ;
 struct aw_ccu_softc* device_get_softc (int ) ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static int
aw_ccu_write_4(device_t dev, bus_addr_t addr, uint32_t val)
{
 struct aw_ccu_softc *sc;
 bus_space_handle_t bsh;
 bus_size_t reg;

 sc = device_get_softc(dev);

 if (aw_ccu_check_addr(sc, addr, &bsh, &reg) != 0)
  return (EINVAL);

 mtx_assert(&sc->mtx, MA_OWNED);
 bus_space_write_4(sc->bst, bsh, reg, val);

 return (0);
}

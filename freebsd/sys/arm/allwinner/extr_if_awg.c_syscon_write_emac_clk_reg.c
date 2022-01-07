
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct awg_softc {int ** res; int * syscon; } ;
typedef int device_t ;


 int EMAC_CLK_REG ;
 int SYSCON_WRITE_4 (int *,int ,int ) ;
 size_t _RES_SYSCON ;
 int bus_write_4 (int *,int ,int ) ;
 struct awg_softc* device_get_softc (int ) ;

__attribute__((used)) static void
syscon_write_emac_clk_reg(device_t dev, uint32_t val)
{
 struct awg_softc *sc;

 sc = device_get_softc(dev);
 if (sc->syscon != ((void*)0))
  SYSCON_WRITE_4(sc->syscon, EMAC_CLK_REG, val);
 else if (sc->res[_RES_SYSCON] != ((void*)0))
  bus_write_4(sc->res[_RES_SYSCON], 0, val);
}

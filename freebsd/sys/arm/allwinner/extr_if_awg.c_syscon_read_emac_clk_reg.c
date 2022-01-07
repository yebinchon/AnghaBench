
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct awg_softc {int ** res; int * syscon; } ;
typedef int device_t ;


 int EMAC_CLK_REG ;
 int SYSCON_READ_4 (int *,int ) ;
 size_t _RES_SYSCON ;
 int bus_read_4 (int *,int ) ;
 struct awg_softc* device_get_softc (int ) ;

__attribute__((used)) static uint32_t
syscon_read_emac_clk_reg(device_t dev)
{
 struct awg_softc *sc;

 sc = device_get_softc(dev);
 if (sc->syscon != ((void*)0))
  return (SYSCON_READ_4(sc->syscon, EMAC_CLK_REG));
 else if (sc->res[_RES_SYSCON] != ((void*)0))
  return (bus_read_4(sc->res[_RES_SYSCON], 0));

 return (0);
}

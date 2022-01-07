
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct imxccm_softc {int * pllbsh; int pllbst; } ;


 int bus_space_read_4 (int ,int ,int) ;

__attribute__((used)) static inline uint32_t
pll_read_4(struct imxccm_softc *sc, int pll, int reg)
{

 return (bus_space_read_4(sc->pllbst, sc->pllbsh[pll - 1], reg));
}

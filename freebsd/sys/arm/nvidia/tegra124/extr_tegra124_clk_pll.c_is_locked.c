
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct pll_sc {int type; int base_reg; int misc_reg; } ;


 scalar_t__ PLLE_MISC_LOCK ;
 scalar_t__ PLLRE_MISC_LOCK ;
 scalar_t__ PLL_BASE_LOCK ;


 int RD4 (struct pll_sc*,int ,scalar_t__*) ;

__attribute__((used)) static bool
is_locked(struct pll_sc *sc)
{
 uint32_t reg;

 switch (sc->type) {
 case 128:
  RD4(sc, sc->misc_reg, &reg);
  reg &= PLLRE_MISC_LOCK;
  break;

 case 129:
  RD4(sc, sc->misc_reg, &reg);
  reg &= PLLE_MISC_LOCK;
  break;

 default:
  RD4(sc, sc->base_reg, &reg);
  reg &= PLL_BASE_LOCK;
  break;
 }
 return (reg != 0);
}

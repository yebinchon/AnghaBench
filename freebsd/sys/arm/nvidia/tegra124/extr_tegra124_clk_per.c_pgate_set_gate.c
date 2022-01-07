
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pgate_sc {int idx; int enabled; } ;
struct clknode {int dummy; } ;


 int DELAY (int) ;
 int DEVICE_LOCK (struct pgate_sc*) ;
 int DEVICE_UNLOCK (struct pgate_sc*) ;
 int MD4 (struct pgate_sc*,int,int,int) ;
 int RD4 (struct pgate_sc*,int,int*) ;
 struct pgate_sc* clknode_get_softc (struct clknode*) ;
 int get_enable_reg (int) ;

__attribute__((used)) static int
pgate_set_gate(struct clknode *clk, bool enable)
{
 struct pgate_sc *sc;
 uint32_t reg, mask, base_reg;

 sc = clknode_get_softc(clk);
 mask = 1 << (sc->idx % 32);
 sc->enabled = enable;
 base_reg = get_enable_reg(sc->idx);

 DEVICE_LOCK(sc);
 MD4(sc, base_reg, mask, enable ? mask : 0);
 RD4(sc, base_reg, &reg);
 DEVICE_UNLOCK(sc);

 DELAY(2);
 return(0);
}

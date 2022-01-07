
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pgate_sc {int idx; int enabled; } ;
struct clknode {int dummy; } ;
typedef int device_t ;


 int DEVICE_LOCK (struct pgate_sc*) ;
 int DEVICE_UNLOCK (struct pgate_sc*) ;
 int RD4 (struct pgate_sc*,int ,int*) ;
 struct pgate_sc* clknode_get_softc (struct clknode*) ;
 int clknode_init_parent_idx (struct clknode*,int ) ;
 int get_enable_reg (int) ;
 int get_reset_reg (int) ;

__attribute__((used)) static int
pgate_init(struct clknode *clk, device_t dev)
{
 struct pgate_sc *sc;
 uint32_t ena_reg, rst_reg, mask;

 sc = clknode_get_softc(clk);
 mask = 1 << (sc->idx % 32);

 DEVICE_LOCK(sc);
 RD4(sc, get_enable_reg(sc->idx), &ena_reg);
 RD4(sc, get_reset_reg(sc->idx), &rst_reg);
 DEVICE_UNLOCK(sc);

 sc->enabled = ena_reg & mask ? 1 : 0;
 clknode_init_parent_idx(clk, 0);

 return(0);
}

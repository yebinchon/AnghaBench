
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rk_clk_fract_sc {int numerator; int denominator; int offset; } ;
struct clknode {int dummy; } ;
typedef int device_t ;


 int DEVICE_LOCK (struct clknode*) ;
 int DEVICE_UNLOCK (struct clknode*) ;
 int RD4 (struct clknode*,int ,int*) ;
 struct rk_clk_fract_sc* clknode_get_softc (struct clknode*) ;
 int clknode_init_parent_idx (struct clknode*,int ) ;

__attribute__((used)) static int
rk_clk_fract_init(struct clknode *clk, device_t dev)
{
 uint32_t reg;
 struct rk_clk_fract_sc *sc;

 sc = clknode_get_softc(clk);
 DEVICE_LOCK(clk);
 RD4(clk, sc->offset, &reg);
 DEVICE_UNLOCK(clk);

 sc->numerator = (reg >> 16) & 0xFFFF;
 sc->denominator = reg & 0xFFFF;
 clknode_init_parent_idx(clk, 0);

 return(0);
}

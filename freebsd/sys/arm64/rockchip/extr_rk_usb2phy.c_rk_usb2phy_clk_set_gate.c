
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rk_usb2phy_clk_sc {TYPE_1__* regs; int grf; } ;
struct clknode {int dummy; } ;
struct TYPE_4__ {int disable_mask; int offset; int enable_mask; } ;
struct TYPE_3__ {TYPE_2__ clk_ctl; } ;


 int SYSCON_WRITE_4 (int ,int ,int ) ;
 struct rk_usb2phy_clk_sc* clknode_get_softc (struct clknode*) ;

__attribute__((used)) static int
rk_usb2phy_clk_set_gate(struct clknode *clk, bool enable)
{
 struct rk_usb2phy_clk_sc *sc;

 sc = clknode_get_softc(clk);

 if (enable)
  SYSCON_WRITE_4(sc->grf, sc->regs->clk_ctl.offset,
      sc->regs->clk_ctl.enable_mask);
 else
  SYSCON_WRITE_4(sc->grf, sc->regs->clk_ctl.offset,
      sc->regs->clk_ctl.disable_mask);
 return (0);
}

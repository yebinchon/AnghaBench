
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct clknode {int dummy; } ;
struct clkdom {int dummy; } ;
struct TYPE_11__ {int shift; int width; int mask; int cond_mask; int cond_value; int cond_shift; int flags; int value; } ;
struct TYPE_9__ {int shift; int width; int mask; int flags; int value; } ;
struct TYPE_7__ {int shift; int width; int mask; int flags; int value; } ;
struct aw_clk_nm_sc {int mux_shift; int mux_mask; int flags; int lock_retries; int lock_shift; int gate_shift; TYPE_5__ prediv; TYPE_3__ n; TYPE_1__ m; int offset; } ;
struct TYPE_12__ {int shift; int width; int cond_width; int cond_mask; int cond_value; int cond_shift; int flags; int value; } ;
struct TYPE_10__ {int shift; int width; int flags; int value; } ;
struct TYPE_8__ {int shift; int width; int flags; int value; } ;
struct aw_clk_nm_def {int mux_shift; int mux_width; int flags; int lock_retries; int lock_shift; int gate_shift; TYPE_6__ prediv; TYPE_4__ n; TYPE_2__ m; int offset; int clkdef; } ;


 int aw_nm_clknode_class ;
 struct clknode* clknode_create (struct clkdom*,int *,int *) ;
 struct aw_clk_nm_sc* clknode_get_softc (struct clknode*) ;
 int clknode_register (struct clkdom*,struct clknode*) ;

int
aw_clk_nm_register(struct clkdom *clkdom, struct aw_clk_nm_def *clkdef)
{
 struct clknode *clk;
 struct aw_clk_nm_sc *sc;

 clk = clknode_create(clkdom, &aw_nm_clknode_class, &clkdef->clkdef);
 if (clk == ((void*)0))
  return (1);

 sc = clknode_get_softc(clk);

 sc->offset = clkdef->offset;

 sc->m.shift = clkdef->m.shift;
 sc->m.width = clkdef->m.width;
 sc->m.mask = ((1 << sc->m.width) - 1) << sc->m.shift;
 sc->m.value = clkdef->m.value;
 sc->m.flags = clkdef->m.flags;

 sc->n.shift = clkdef->n.shift;
 sc->n.width = clkdef->n.width;
 sc->n.mask = ((1 << sc->n.width) - 1) << sc->n.shift;
 sc->n.value = clkdef->n.value;
 sc->n.flags = clkdef->n.flags;

 sc->prediv.shift = clkdef->prediv.shift;
 sc->prediv.width = clkdef->prediv.width;
 sc->prediv.mask = ((1 << sc->prediv.width) - 1) << sc->prediv.shift;
 sc->prediv.value = clkdef->prediv.value;
 sc->prediv.flags = clkdef->prediv.flags;
 sc->prediv.cond_shift = clkdef->prediv.cond_shift;
 if (clkdef->prediv.cond_width != 0)
  sc->prediv.cond_mask = ((1 << clkdef->prediv.cond_width) - 1) << sc->prediv.shift;
 else
  sc->prediv.cond_mask = clkdef->prediv.cond_mask;
 sc->prediv.cond_value = clkdef->prediv.cond_value;

 sc->mux_shift = clkdef->mux_shift;
 sc->mux_mask = ((1 << clkdef->mux_width) - 1) << sc->mux_shift;

 sc->gate_shift = clkdef->gate_shift;

 sc->lock_shift = clkdef->lock_shift;
 sc->lock_retries = clkdef->lock_retries;

 sc->flags = clkdef->flags;

 clknode_register(clkdom, clk);

 return (0);
}

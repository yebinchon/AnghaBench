
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
struct TYPE_11__ {int shift; int width; int mask; int flags; int value; } ;
struct TYPE_9__ {int shift; int width; int mask; int flags; int value; } ;
struct TYPE_7__ {int shift; int width; int mask; int flags; int value; } ;
struct aw_clk_nmm_sc {int flags; int lock_retries; int lock_shift; int gate_shift; TYPE_5__ m1; TYPE_3__ m0; TYPE_1__ n; int offset; } ;
struct TYPE_12__ {int shift; int width; int flags; int value; } ;
struct TYPE_10__ {int shift; int width; int flags; int value; } ;
struct TYPE_8__ {int shift; int width; int flags; int value; } ;
struct aw_clk_nmm_def {int flags; int lock_retries; int lock_shift; int gate_shift; TYPE_6__ m1; TYPE_4__ m0; TYPE_2__ n; int offset; int clkdef; } ;


 int aw_nmm_clknode_class ;
 struct clknode* clknode_create (struct clkdom*,int *,int *) ;
 struct aw_clk_nmm_sc* clknode_get_softc (struct clknode*) ;
 int clknode_register (struct clkdom*,struct clknode*) ;

int
aw_clk_nmm_register(struct clkdom *clkdom, struct aw_clk_nmm_def *clkdef)
{
 struct clknode *clk;
 struct aw_clk_nmm_sc *sc;

 clk = clknode_create(clkdom, &aw_nmm_clknode_class, &clkdef->clkdef);
 if (clk == ((void*)0))
  return (1);

 sc = clknode_get_softc(clk);

 sc->offset = clkdef->offset;

 sc->n.shift = clkdef->n.shift;
 sc->n.width = clkdef->n.width;
 sc->n.mask = ((1 << sc->n.width) - 1) << sc->n.shift;
 sc->n.value = clkdef->n.value;
 sc->n.flags = clkdef->n.flags;

 sc->m0.shift = clkdef->m0.shift;
 sc->m0.width = clkdef->m0.width;
 sc->m0.mask = ((1 << sc->m0.width) - 1) << sc->m0.shift;
 sc->m0.value = clkdef->m0.value;
 sc->m0.flags = clkdef->m0.flags;

 sc->m1.shift = clkdef->m1.shift;
 sc->m1.width = clkdef->m1.width;
 sc->m1.mask = ((1 << sc->m1.width) - 1) << sc->m1.shift;
 sc->m1.value = clkdef->m1.value;
 sc->m1.flags = clkdef->m1.flags;

 sc->gate_shift = clkdef->gate_shift;

 sc->lock_shift = clkdef->lock_shift;
 sc->lock_retries = clkdef->lock_retries;

 sc->flags = clkdef->flags;

 clknode_register(clkdom, clk);

 return (0);
}


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
struct TYPE_11__ {int shift; int width; int mask; int min_value; int flags; int value; } ;
struct TYPE_9__ {int shift; int width; int mask; int min_value; int flags; int value; } ;
struct TYPE_7__ {int shift; int width; int mask; int min_value; int flags; int value; } ;
struct aw_clk_mipi_sc {int flags; int lock_retries; int lock_shift; int gate_shift; int max_freq; int min_freq; TYPE_5__ n; TYPE_3__ m; TYPE_1__ k; int offset; } ;
struct TYPE_12__ {int shift; int width; int min_value; int flags; int value; } ;
struct TYPE_10__ {int shift; int width; int min_value; int flags; int value; } ;
struct TYPE_8__ {int shift; int width; int min_value; int flags; int value; } ;
struct aw_clk_mipi_def {int flags; int lock_retries; int lock_shift; int gate_shift; int max_freq; int min_freq; TYPE_6__ n; TYPE_4__ m; TYPE_2__ k; int offset; int clkdef; } ;


 int aw_mipi_clknode_class ;
 struct clknode* clknode_create (struct clkdom*,int *,int *) ;
 struct aw_clk_mipi_sc* clknode_get_softc (struct clknode*) ;
 int clknode_register (struct clkdom*,struct clknode*) ;

int
aw_clk_mipi_register(struct clkdom *clkdom, struct aw_clk_mipi_def *clkdef)
{
 struct clknode *clk;
 struct aw_clk_mipi_sc *sc;

 clk = clknode_create(clkdom, &aw_mipi_clknode_class, &clkdef->clkdef);
 if (clk == ((void*)0))
  return (1);

 sc = clknode_get_softc(clk);

 sc->offset = clkdef->offset;

 sc->k.shift = clkdef->k.shift;
 sc->k.width = clkdef->k.width;
 sc->k.mask = ((1 << sc->k.width) - 1) << sc->k.shift;
 sc->k.value = clkdef->k.value;
 sc->k.flags = clkdef->k.flags;
 sc->k.min_value = clkdef->k.min_value;

 sc->m.shift = clkdef->m.shift;
 sc->m.width = clkdef->m.width;
 sc->m.mask = ((1 << sc->m.width) - 1) << sc->m.shift;
 sc->m.value = clkdef->m.value;
 sc->m.flags = clkdef->m.flags;
 sc->m.min_value = clkdef->m.min_value;

 sc->n.shift = clkdef->n.shift;
 sc->n.width = clkdef->n.width;
 sc->n.mask = ((1 << sc->n.width) - 1) << sc->n.shift;
 sc->n.value = clkdef->n.value;
 sc->n.flags = clkdef->n.flags;
 sc->n.min_value = clkdef->n.min_value;

 sc->min_freq = clkdef->min_freq;
 sc->max_freq = clkdef->max_freq;

 sc->gate_shift = clkdef->gate_shift;

 sc->lock_shift = clkdef->lock_shift;
 sc->lock_retries = clkdef->lock_retries;

 sc->flags = clkdef->flags;

 clknode_register(clkdom, clk);

 return (0);
}

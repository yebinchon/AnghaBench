
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
struct TYPE_11__ {int mode_sel; int freq_sel; int freq1; int freq0; } ;
struct TYPE_9__ {int shift; int width; int mask; int flags; int value; } ;
struct TYPE_7__ {int shift; int width; int mask; int flags; int value; } ;
struct aw_clk_frac_sc {int mux_shift; int mux_mask; int flags; int lock_retries; int lock_shift; int gate_shift; int max_freq; int min_freq; TYPE_5__ frac; TYPE_3__ n; TYPE_1__ m; int offset; } ;
struct TYPE_12__ {int mode_sel; int freq_sel; int freq1; int freq0; } ;
struct TYPE_10__ {int shift; int width; int flags; int value; } ;
struct TYPE_8__ {int shift; int width; int flags; int value; } ;
struct aw_clk_frac_def {int mux_shift; int mux_width; int flags; int lock_retries; int lock_shift; int gate_shift; int max_freq; int min_freq; TYPE_6__ frac; TYPE_4__ n; TYPE_2__ m; int offset; int clkdef; } ;


 int aw_frac_clknode_class ;
 struct clknode* clknode_create (struct clkdom*,int *,int *) ;
 struct aw_clk_frac_sc* clknode_get_softc (struct clknode*) ;
 int clknode_register (struct clkdom*,struct clknode*) ;

int
aw_clk_frac_register(struct clkdom *clkdom, struct aw_clk_frac_def *clkdef)
{
 struct clknode *clk;
 struct aw_clk_frac_sc *sc;

 clk = clknode_create(clkdom, &aw_frac_clknode_class, &clkdef->clkdef);
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

 sc->frac.freq0 = clkdef->frac.freq0;
 sc->frac.freq1 = clkdef->frac.freq1;
 sc->frac.mode_sel = 1 << clkdef->frac.mode_sel;
 sc->frac.freq_sel = 1 << clkdef->frac.freq_sel;

 sc->min_freq = clkdef->min_freq;
 sc->max_freq = clkdef->max_freq;

 sc->mux_shift = clkdef->mux_shift;
 sc->mux_mask = ((1 << clkdef->mux_width) - 1) << sc->mux_shift;

 sc->gate_shift = clkdef->gate_shift;

 sc->lock_shift = clkdef->lock_shift;
 sc->lock_retries = clkdef->lock_retries;

 sc->flags = clkdef->flags;

 clknode_register(clkdom, clk);

 return (0);
}

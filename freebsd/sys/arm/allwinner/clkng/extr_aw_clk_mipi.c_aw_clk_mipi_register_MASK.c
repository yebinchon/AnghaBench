#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct clknode {int dummy; } ;
struct clkdom {int dummy; } ;
struct TYPE_11__ {int shift; int width; int mask; int /*<<< orphan*/  min_value; int /*<<< orphan*/  flags; int /*<<< orphan*/  value; } ;
struct TYPE_9__ {int shift; int width; int mask; int /*<<< orphan*/  min_value; int /*<<< orphan*/  flags; int /*<<< orphan*/  value; } ;
struct TYPE_7__ {int shift; int width; int mask; int /*<<< orphan*/  min_value; int /*<<< orphan*/  flags; int /*<<< orphan*/  value; } ;
struct aw_clk_mipi_sc {int /*<<< orphan*/  flags; int /*<<< orphan*/  lock_retries; int /*<<< orphan*/  lock_shift; int /*<<< orphan*/  gate_shift; int /*<<< orphan*/  max_freq; int /*<<< orphan*/  min_freq; TYPE_5__ n; TYPE_3__ m; TYPE_1__ k; int /*<<< orphan*/  offset; } ;
struct TYPE_12__ {int shift; int width; int /*<<< orphan*/  min_value; int /*<<< orphan*/  flags; int /*<<< orphan*/  value; } ;
struct TYPE_10__ {int shift; int width; int /*<<< orphan*/  min_value; int /*<<< orphan*/  flags; int /*<<< orphan*/  value; } ;
struct TYPE_8__ {int shift; int width; int /*<<< orphan*/  min_value; int /*<<< orphan*/  flags; int /*<<< orphan*/  value; } ;
struct aw_clk_mipi_def {int /*<<< orphan*/  flags; int /*<<< orphan*/  lock_retries; int /*<<< orphan*/  lock_shift; int /*<<< orphan*/  gate_shift; int /*<<< orphan*/  max_freq; int /*<<< orphan*/  min_freq; TYPE_6__ n; TYPE_4__ m; TYPE_2__ k; int /*<<< orphan*/  offset; int /*<<< orphan*/  clkdef; } ;

/* Variables and functions */
 int /*<<< orphan*/  aw_mipi_clknode_class ; 
 struct clknode* FUNC0 (struct clkdom*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct aw_clk_mipi_sc* FUNC1 (struct clknode*) ; 
 int /*<<< orphan*/  FUNC2 (struct clkdom*,struct clknode*) ; 

int
FUNC3(struct clkdom *clkdom, struct aw_clk_mipi_def *clkdef)
{
	struct clknode *clk;
	struct aw_clk_mipi_sc *sc;

	clk = FUNC0(clkdom, &aw_mipi_clknode_class, &clkdef->clkdef);
	if (clk == NULL)
		return (1);

	sc = FUNC1(clk);

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

	FUNC2(clkdom, clk);

	return (0);
}
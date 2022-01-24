#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint64_t ;
typedef  int uint32_t ;
struct clknode {int dummy; } ;
struct aw_clk_m_sc {int /*<<< orphan*/  m; int /*<<< orphan*/  offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct clknode*) ; 
 int /*<<< orphan*/  FUNC1 (struct clknode*) ; 
 int /*<<< orphan*/  FUNC2 (struct clknode*,int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (int,int /*<<< orphan*/ *) ; 
 struct aw_clk_m_sc* FUNC4 (struct clknode*) ; 

__attribute__((used)) static int
FUNC5(struct clknode *clk, uint64_t *freq)
{
	struct aw_clk_m_sc *sc;
	uint32_t val, m;

	sc = FUNC4(clk);

	FUNC0(clk);
	FUNC2(clk, sc->offset, &val);
	FUNC1(clk);

	m = FUNC3(val, &sc->m);

	*freq = *freq / m;

	return (0);
}
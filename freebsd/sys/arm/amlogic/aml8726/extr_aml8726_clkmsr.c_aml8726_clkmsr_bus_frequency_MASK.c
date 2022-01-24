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
typedef  scalar_t__ u_long ;
struct resource {int /*<<< orphan*/  r_bushandle; int /*<<< orphan*/  r_bustag; struct resource** res; } ;
struct aml8726_clkmsr_softc {int /*<<< orphan*/  r_bushandle; int /*<<< orphan*/  r_bustag; struct aml8726_clkmsr_softc** res; } ;
typedef  int /*<<< orphan*/  sc ;
typedef  int phandle_t ;
typedef  int /*<<< orphan*/  mem ;

/* Variables and functions */
 int /*<<< orphan*/  AML_CLKMSR_CLK81 ; 
 scalar_t__ AML_SOC_HW_REV_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct resource*,int /*<<< orphan*/ ) ; 
 scalar_t__ aml8726_soc_hw_rev ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC6 (int,char*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC8 (int,char*) ; 
 scalar_t__ FUNC9 (int,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  fdtbus_bs_tag ; 
 int /*<<< orphan*/  FUNC10 (struct resource*,int /*<<< orphan*/ ,int) ; 

int
FUNC11()
{
	struct resource mem;
	struct aml8726_clkmsr_softc sc;
	phandle_t node;
	u_long pbase, psize;
	u_long start, size;
	int freq;

	FUNC0(aml8726_soc_hw_rev != AML_SOC_HW_REV_UNKNOWN,
		("aml8726_soc_hw_rev isn't initialized"));

	/*
	 * Try to access the clkmsr node directly i.e. through /aliases/.
	 */

	if ((node = FUNC1("clkmsr")) != -1)
		if (FUNC8(node, "amlogic,aml8726-clkmsr"))
			 goto moveon;

	/*
	 * Find the node the long way.
	 */
	if ((node = FUNC1("/soc")) == -1)
		return (0);

	if ((node = FUNC6(node,
	    "amlogic,aml8726-clkmsr", 1)) == 0)
		return (0);

moveon:
	if (FUNC7(FUNC2(node), 0, &pbase, &psize) != 0
	    || FUNC9(node, &start, &size) != 0)
		return (0);

	start += pbase;

	FUNC10(&mem, 0, sizeof(mem));

	mem.r_bustag = fdtbus_bs_tag;

	if (FUNC4(mem.r_bustag, start, size, 0, &mem.r_bushandle) != 0)
		return (0);

	/*
	 * Build an incomplete (however sufficient for the purpose
	 * of calling aml8726_clkmsr_clock_frequency) softc.
	 */

	FUNC10(&sc, 0, sizeof(sc));

	sc.res[0] = &mem;

	freq = FUNC3(&sc, AML_CLKMSR_CLK81) * 1000000;

	FUNC5(mem.r_bustag, mem.r_bushandle, size);

	return (freq);
}
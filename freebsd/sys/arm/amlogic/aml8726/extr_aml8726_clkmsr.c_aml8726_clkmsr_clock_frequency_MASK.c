#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct aml8726_clkmsr_softc {int dummy; } ;
struct TYPE_2__ {int mux; } ;

/* Variables and functions */
 int AML_CLKMSR_0_BUSY ; 
 int AML_CLKMSR_0_DURATION_SHIFT ; 
 int AML_CLKMSR_0_MEASURE ; 
 int AML_CLKMSR_0_MUX_EN ; 
 int AML_CLKMSR_0_MUX_SHIFT ; 
 int /*<<< orphan*/  AML_CLKMSR_0_REG ; 
 int /*<<< orphan*/  AML_CLKMSR_2_REG ; 
 int AML_CLKMSR_2_RESULT_MASK ; 
 int AML_CLKMSR_2_RESULT_SHIFT ; 
 int AML_CLKMSR_DURATION ; 
 unsigned int AML_CLKMSR_NCLKS ; 
 int /*<<< orphan*/  FUNC0 (struct aml8726_clkmsr_softc*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct aml8726_clkmsr_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct aml8726_clkmsr_softc*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* aml8726_clkmsr_clks ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int
FUNC4(struct aml8726_clkmsr_softc *sc, unsigned clock)
{
	uint32_t value;

	if (clock >= AML_CLKMSR_NCLKS)
		return (0);

	/*
	 * Locking is not used as this is only expected to be called from
	 * FDT fixup (which occurs prior to driver initialization) or attach.
	 */

	FUNC2(sc, AML_CLKMSR_0_REG, 0);

	FUNC0(sc, AML_CLKMSR_0_REG);

	value = (aml8726_clkmsr_clks[clock].mux << AML_CLKMSR_0_MUX_SHIFT)
	    | ((AML_CLKMSR_DURATION - 1) << AML_CLKMSR_0_DURATION_SHIFT)
	    | AML_CLKMSR_0_MUX_EN
	    | AML_CLKMSR_0_MEASURE;
	FUNC2(sc, AML_CLKMSR_0_REG, value);

	FUNC0(sc, AML_CLKMSR_0_REG);

	while ((FUNC1(sc, AML_CLKMSR_0_REG) & AML_CLKMSR_0_BUSY) != 0)
		FUNC3();

	value &= ~AML_CLKMSR_0_MEASURE;
	FUNC2(sc, AML_CLKMSR_0_REG, value);

	FUNC0(sc, AML_CLKMSR_0_REG);

	value = (((FUNC1(sc, AML_CLKMSR_2_REG) & AML_CLKMSR_2_RESULT_MASK)
	    >> AML_CLKMSR_2_RESULT_SHIFT) + AML_CLKMSR_DURATION / 2) /
	    AML_CLKMSR_DURATION;

	return value;
}
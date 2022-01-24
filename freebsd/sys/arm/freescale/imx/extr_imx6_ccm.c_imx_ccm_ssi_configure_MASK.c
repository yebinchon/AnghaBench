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
typedef  int uint32_t ;
struct ccm_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CCM_CS1CDR ; 
 int /*<<< orphan*/  CCM_CS2CDR ; 
 int /*<<< orphan*/  CCM_CSCMR1 ; 
 int FUNC0 (struct ccm_softc*,int /*<<< orphan*/ ) ; 
 int SSI1_CLK_PODF_SHIFT ; 
 int SSI1_CLK_PRED_SHIFT ; 
 int SSI1_CLK_SEL_S ; 
 int SSI2_CLK_PODF_SHIFT ; 
 int SSI2_CLK_PRED_SHIFT ; 
 int SSI2_CLK_SEL_S ; 
 int SSI3_CLK_PODF_SHIFT ; 
 int SSI3_CLK_PRED_SHIFT ; 
 int SSI3_CLK_SEL_S ; 
 int SSI_CLK_PODF_MASK ; 
 int SSI_CLK_PRED_MASK ; 
 int SSI_CLK_SEL_M ; 
 int SSI_CLK_SEL_PLL4 ; 
 int /*<<< orphan*/  FUNC1 (struct ccm_softc*,int /*<<< orphan*/ ,int) ; 
 struct ccm_softc* ccm_sc ; 

void
FUNC2(device_t _ssidev)
{
	struct ccm_softc *sc;
	uint32_t reg;

	sc = ccm_sc;

	/*
	 * Select PLL4 (Audio PLL) clock multiplexer as source.
	 * PLL output frequency = Fref * (DIV_SELECT + NUM/DENOM).
	 */

	reg = FUNC0(sc, CCM_CSCMR1);
	reg &= ~(SSI_CLK_SEL_M << SSI1_CLK_SEL_S);
	reg |= (SSI_CLK_SEL_PLL4 << SSI1_CLK_SEL_S);
	reg &= ~(SSI_CLK_SEL_M << SSI2_CLK_SEL_S);
	reg |= (SSI_CLK_SEL_PLL4 << SSI2_CLK_SEL_S);
	reg &= ~(SSI_CLK_SEL_M << SSI3_CLK_SEL_S);
	reg |= (SSI_CLK_SEL_PLL4 << SSI3_CLK_SEL_S);
	FUNC1(sc, CCM_CSCMR1, reg);

	/*
	 * Ensure we have set hardware-default values
	 * for pre and post dividers.
	 */

	/* SSI1 and SSI3 */
	reg = FUNC0(sc, CCM_CS1CDR);
	/* Divide by 2 */
	reg &= ~(SSI_CLK_PODF_MASK << SSI1_CLK_PODF_SHIFT);
	reg &= ~(SSI_CLK_PODF_MASK << SSI3_CLK_PODF_SHIFT);
	reg |= (0x1 << SSI1_CLK_PODF_SHIFT);
	reg |= (0x1 << SSI3_CLK_PODF_SHIFT);
	/* Divide by 4 */
	reg &= ~(SSI_CLK_PRED_MASK << SSI1_CLK_PRED_SHIFT);
	reg &= ~(SSI_CLK_PRED_MASK << SSI3_CLK_PRED_SHIFT);
	reg |= (0x3 << SSI1_CLK_PRED_SHIFT);
	reg |= (0x3 << SSI3_CLK_PRED_SHIFT);
	FUNC1(sc, CCM_CS1CDR, reg);

	/* SSI2 */
	reg = FUNC0(sc, CCM_CS2CDR);
	/* Divide by 2 */
	reg &= ~(SSI_CLK_PODF_MASK << SSI2_CLK_PODF_SHIFT);
	reg |= (0x1 << SSI2_CLK_PODF_SHIFT);
	/* Divide by 4 */
	reg &= ~(SSI_CLK_PRED_MASK << SSI2_CLK_PRED_SHIFT);
	reg |= (0x3 << SSI2_CLK_PRED_SHIFT);
	FUNC1(sc, CCM_CS2CDR, reg);
}
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
struct aw_mmc_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AW_MMC_DBGC ; 
 int /*<<< orphan*/  AW_MMC_FUNS ; 
 int /*<<< orphan*/  AW_MMC_GCTL ; 
 int AW_MMC_GCTL_FIFO_AC_MOD ; 
 int AW_MMC_GCTL_INT_ENB ; 
 int AW_MMC_GCTL_WAIT_MEM_ACCESS ; 
 int /*<<< orphan*/  AW_MMC_IDST ; 
 int /*<<< orphan*/  AW_MMC_IMKR ; 
 int FUNC0 (struct aw_mmc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AW_MMC_RISR ; 
 int /*<<< orphan*/  AW_MMC_TMOR ; 
 int /*<<< orphan*/  AW_MMC_TMOR_DTO_LMT_MASK ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AW_MMC_TMOR_RTO_LMT_MASK ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct aw_mmc_softc*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct aw_mmc_softc*) ; 

__attribute__((used)) static int
FUNC5(struct aw_mmc_softc *sc)
{
	uint32_t reg;
	int ret;

	ret = FUNC4(sc);
	if (ret != 0)
		return (ret);

	/* Set the timeout. */
	FUNC3(sc, AW_MMC_TMOR,
	    FUNC1(AW_MMC_TMOR_DTO_LMT_MASK) |
	    FUNC2(AW_MMC_TMOR_RTO_LMT_MASK));

	/* Unmask interrupts. */
	FUNC3(sc, AW_MMC_IMKR, 0);

	/* Clear pending interrupts. */
	FUNC3(sc, AW_MMC_RISR, 0xffffffff);

	/* Debug register, undocumented */
	FUNC3(sc, AW_MMC_DBGC, 0xdeb);

	/* Function select register */
	FUNC3(sc, AW_MMC_FUNS, 0xceaa0000);

	FUNC3(sc, AW_MMC_IDST, 0xffffffff);

	/* Enable interrupts and disable AHB access. */
	reg = FUNC0(sc, AW_MMC_GCTL);
	reg |= AW_MMC_GCTL_INT_ENB;
	reg &= ~AW_MMC_GCTL_FIFO_AC_MOD;
	reg &= ~AW_MMC_GCTL_WAIT_MEM_ACCESS;
	FUNC3(sc, AW_MMC_GCTL, reg);

	return (0);
}
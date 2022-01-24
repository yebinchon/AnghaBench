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
struct exynos_xhci_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GCTL ; 
 int GCTL_CORESOFTRESET ; 
 int GCTL_DISSCRAMBLE ; 
 int GCTL_DSBLCLKGTNG ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GCTL_PRTCAP_HOST ; 
 int /*<<< orphan*/  GCTL_PRTCAP_OTG ; 
 int GCTL_SCALEDOWN_MASK ; 
 int GCTL_SCALEDOWN_SHIFT ; 
 int GCTL_U2RSTECN ; 
 int /*<<< orphan*/  GHWPARAMS1 ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ GHWPARAMS1_EN_PWROPT_CLK ; 
 int /*<<< orphan*/  GSNPSID ; 
 int GSNPSID_MASK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int GUSB2PHYCFG_PHYSOFTRST ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int GUSB3PIPECTL_PHYSOFTRST ; 
 int FUNC5 (struct exynos_xhci_softc*,int /*<<< orphan*/ ) ; 
 int REVISION_MASK ; 
 int /*<<< orphan*/  FUNC6 (struct exynos_xhci_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static int
FUNC8(struct exynos_xhci_softc *esc)
{
	int hwparams1;
	int rev;
	int reg;

	rev = FUNC5(esc, GSNPSID);
	if ((rev & GSNPSID_MASK) != 0x55330000) {
		FUNC7("It is not DWC3 controller\n");
		return (-1);
	}

	/* Reset controller */
	FUNC6(esc, GCTL, GCTL_CORESOFTRESET);
	FUNC6(esc, FUNC4(0), GUSB3PIPECTL_PHYSOFTRST);
	FUNC6(esc, FUNC3(0), GUSB2PHYCFG_PHYSOFTRST);

	FUNC0(100000);

	reg = FUNC5(esc, FUNC4(0));
	reg &= ~(GUSB3PIPECTL_PHYSOFTRST);
	FUNC6(esc, FUNC4(0), reg);

	reg = FUNC5(esc, FUNC3(0));
	reg &= ~(GUSB2PHYCFG_PHYSOFTRST);
	FUNC6(esc, FUNC3(0), reg);

	reg = FUNC5(esc, GCTL);
	reg &= ~GCTL_CORESOFTRESET;
	FUNC6(esc, GCTL, reg);

	hwparams1 = FUNC5(esc, GHWPARAMS1);

	reg = FUNC5(esc, GCTL);
	reg &= ~(GCTL_SCALEDOWN_MASK << GCTL_SCALEDOWN_SHIFT);
	reg &= ~(GCTL_DISSCRAMBLE);

	if (FUNC2(hwparams1) == \
	    GHWPARAMS1_EN_PWROPT_CLK)
		reg &= ~(GCTL_DSBLCLKGTNG);

	if ((rev & REVISION_MASK) < 0x190a)
		reg |= (GCTL_U2RSTECN);
	FUNC6(esc, GCTL, reg);

	/* Set host mode */
	reg = FUNC5(esc, GCTL);
	reg &= ~(FUNC1(GCTL_PRTCAP_OTG));
	reg |= FUNC1(GCTL_PRTCAP_HOST);
	FUNC6(esc, GCTL, reg);

	return (0);
}
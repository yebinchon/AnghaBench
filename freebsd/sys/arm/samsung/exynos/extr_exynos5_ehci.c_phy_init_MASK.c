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
struct exynos_ehci_softc {int /*<<< orphan*/  host_bsh; int /*<<< orphan*/  host_bst; int /*<<< orphan*/  sysreg_bsh; int /*<<< orphan*/  sysreg_bst; } ;
typedef  int phandle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EXYNOS5_SYSREG_USB2_PHY ; 
 int /*<<< orphan*/  GPIO_INPUT ; 
 int /*<<< orphan*/  GPIO_OUTPUT ; 
 int HOST_CTRL_CLK_24MHZ ; 
 int HOST_CTRL_CLK_MASK ; 
 int HOST_CTRL_RESET_LINK ; 
 int HOST_CTRL_RESET_PHY ; 
 int HOST_CTRL_RESET_PHY_ALL ; 
 int HOST_CTRL_SIDDQ ; 
 int HOST_CTRL_SLEEP ; 
 int HOST_CTRL_SUSPEND ; 
 int FUNC1 (char*) ; 
 int USB2_MODE_HOST ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct exynos_ehci_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct exynos_ehci_softc*,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static int
FUNC7(struct exynos_ehci_softc *esc)
{
	int reg;
	phandle_t hub;

	FUNC4(esc, GPIO_INPUT, 1);

	/* set USB HOST mode */
	FUNC3(esc->sysreg_bst, esc->sysreg_bsh,
	    EXYNOS5_SYSREG_USB2_PHY, USB2_MODE_HOST);

	/* Power ON phy */
	FUNC6();

	reg = FUNC2(esc->host_bst, esc->host_bsh, 0x0);
	reg &= ~(HOST_CTRL_CLK_MASK |
	    HOST_CTRL_RESET_PHY |
	    HOST_CTRL_RESET_PHY_ALL |
	    HOST_CTRL_SIDDQ |
	    HOST_CTRL_SUSPEND |
	    HOST_CTRL_SLEEP);

	reg |= (HOST_CTRL_CLK_24MHZ |
	    HOST_CTRL_RESET_LINK);
	FUNC3(esc->host_bst, esc->host_bsh, 0x0, reg);

	FUNC0(10);

	reg = FUNC2(esc->host_bst, esc->host_bsh, 0x0);
	reg &= ~(HOST_CTRL_RESET_LINK);
	FUNC3(esc->host_bst, esc->host_bsh, 0x0, reg);

	if ((hub = FUNC1("/hsichub")) != -1) {
		FUNC5(esc, hub);
	}

	FUNC4(esc, GPIO_OUTPUT, 1);

	return (0);
}
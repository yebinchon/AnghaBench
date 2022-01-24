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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/  bdev; } ;
struct ehci_softc {TYPE_1__ sc_bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  EHCI_UM_CM ; 
 int /*<<< orphan*/  EHCI_UM_CM_HOST ; 
 int /*<<< orphan*/  EHCI_USBMODE_LPM ; 
 int /*<<< orphan*/  FUNC0 (struct ehci_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ehci_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC3(struct ehci_softc *ehci_softc)
{
	uint32_t usbmode;

	/* Force HOST mode. */
	usbmode = FUNC0(ehci_softc, EHCI_USBMODE_LPM);
	usbmode &= ~EHCI_UM_CM;
	usbmode |= EHCI_UM_CM_HOST;
	FUNC2(ehci_softc->sc_bus.bdev, "set host controller mode\n");
	FUNC1(ehci_softc, EHCI_USBMODE_LPM, usbmode);
}
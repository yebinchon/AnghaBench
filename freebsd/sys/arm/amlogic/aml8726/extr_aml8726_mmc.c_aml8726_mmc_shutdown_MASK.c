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
struct aml8726_mmc_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AML_MMC_IRQ_STATUS_CLEAR_IRQ ; 
 int /*<<< orphan*/  AML_MMC_IRQ_STATUS_REG ; 
 int /*<<< orphan*/  FUNC0 (struct aml8726_mmc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct aml8726_mmc_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct aml8726_mmc_softc*,int) ; 
 struct aml8726_mmc_softc* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct aml8726_mmc_softc *sc = FUNC3(dev);

	/*
	 * Turn off the power, reset the hardware state machine,
	 * disable the interrupts, and clear the interrupts.
	 */
	(void)FUNC1(sc);
	FUNC2(sc, false);
	FUNC0(sc, AML_MMC_IRQ_STATUS_REG, AML_MMC_IRQ_STATUS_CLEAR_IRQ);

	return (0);
}
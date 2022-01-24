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
struct aml8726_sdxc_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AML_SDXC_IRQ_ENABLE_REG ; 
 int /*<<< orphan*/  FUNC0 (struct aml8726_sdxc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct aml8726_sdxc_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct aml8726_sdxc_softc*) ; 
 struct aml8726_sdxc_softc* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct aml8726_sdxc_softc *sc = FUNC3(dev);

	/*
	 * Turn off the power, reset the hardware state machine,
	 * and disable the interrupts.
	 */
	FUNC1(sc);
	FUNC2(sc);
	FUNC0(sc, AML_SDXC_IRQ_ENABLE_REG, 0);

	return (0);
}
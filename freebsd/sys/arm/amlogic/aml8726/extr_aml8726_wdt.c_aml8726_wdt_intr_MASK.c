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
struct aml8726_wdt_softc {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int AML_WDT_CTRL_EN ; 
 int AML_WDT_CTRL_IRQ_EN ; 
 int /*<<< orphan*/  AML_WDT_CTRL_REG ; 
 int /*<<< orphan*/  FUNC0 (struct aml8726_wdt_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct aml8726_wdt_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct aml8726_wdt_softc*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct aml8726_wdt_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct aml8726_wdt_softc*,int /*<<< orphan*/ ,int) ; 
 int FILTER_HANDLED ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC6(void *arg)
{
	struct aml8726_wdt_softc *sc = (struct aml8726_wdt_softc *)arg;

	/*
	 * Normally a timeout causes a hardware reset, however
	 * the watchdog timer can be configured to cause an
	 * interrupt instead by setting AML_WDT_CTRL_IRQ_EN
	 * and clearing AML_WDT_CTRL_CPU_WDRESET_MASK.
	 */

	FUNC0(sc);

	FUNC4(sc, AML_WDT_CTRL_REG,
	    (FUNC3(sc, AML_WDT_CTRL_REG) & ~(AML_WDT_CTRL_IRQ_EN |
	    AML_WDT_CTRL_EN)));

	FUNC2(sc, AML_WDT_CTRL_REG);

	FUNC1(sc);

	FUNC5(sc->dev, "timeout expired\n");

	return (FILTER_HANDLED);
}
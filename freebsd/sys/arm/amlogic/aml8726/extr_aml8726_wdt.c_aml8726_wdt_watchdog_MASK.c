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
typedef  int uint64_t ;
typedef  int uint32_t ;
typedef  int u_int ;
struct aml8726_wdt_softc {int dummy; } ;

/* Variables and functions */
 int AML_WDT_CTRL_CPU_WDRESET_MASK ; 
 int AML_WDT_CTRL_EN ; 
 int AML_WDT_CTRL_IRQ_EN ; 
 int /*<<< orphan*/  AML_WDT_CTRL_REG ; 
 int AML_WDT_CTRL_TERMINAL_CNT_MASK ; 
 int AML_WDT_CTRL_TERMINAL_CNT_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct aml8726_wdt_softc*) ; 
 int /*<<< orphan*/  AML_WDT_RESET_REG ; 
 int /*<<< orphan*/  FUNC1 (struct aml8726_wdt_softc*) ; 
 int FUNC2 (struct aml8726_wdt_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct aml8726_wdt_softc*,int /*<<< orphan*/ ,int) ; 
 int WD_INTERVAL ; 

__attribute__((used)) static void
FUNC4(void *private, u_int cmd, int *error)
{
	struct aml8726_wdt_softc *sc = (struct aml8726_wdt_softc *)private;
	uint32_t wcr;
	uint64_t tens_of_usec;

	FUNC0(sc);

	tens_of_usec = (((uint64_t)1 << (cmd & WD_INTERVAL)) + 9999) / 10000;

	if (cmd != 0 && tens_of_usec <= (AML_WDT_CTRL_TERMINAL_CNT_MASK >>
	    AML_WDT_CTRL_TERMINAL_CNT_SHIFT)) {

		wcr = AML_WDT_CTRL_CPU_WDRESET_MASK |
		    AML_WDT_CTRL_EN | ((uint32_t)tens_of_usec <<
		    AML_WDT_CTRL_TERMINAL_CNT_SHIFT);

		FUNC3(sc, AML_WDT_RESET_REG, 0);
		FUNC3(sc, AML_WDT_CTRL_REG, wcr);

		*error = 0;
	} else
		FUNC3(sc, AML_WDT_CTRL_REG,
		    (FUNC2(sc, AML_WDT_CTRL_REG) &
		    ~(AML_WDT_CTRL_IRQ_EN | AML_WDT_CTRL_EN)));

	FUNC1(sc);
}
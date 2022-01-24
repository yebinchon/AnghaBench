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
struct TYPE_2__ {scalar_t__ always; int xo; int /*<<< orphan*/  gpo; } ;
struct aml8726_rtc_softc {TYPE_1__ init; } ;

/* Variables and functions */
 int /*<<< orphan*/  AML_RTC_0_REG ; 
 int /*<<< orphan*/  AML_RTC_1_REG ; 
 int /*<<< orphan*/  AML_RTC_4_REG ; 
 int AML_RTC_ABSY ; 
 int AML_RTC_AS ; 
 int /*<<< orphan*/  AML_RTC_GPO_SREG ; 
 int AML_RTC_IRQ_DIS ; 
 int AML_RTC_SCLK ; 
 int AML_RTC_SDI ; 
 int AML_RTC_SEN ; 
 int AML_RTC_SRDY ; 
 int /*<<< orphan*/  FUNC0 (struct aml8726_rtc_softc*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct aml8726_rtc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct aml8726_rtc_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ TRUE ; 
 int FUNC4 (struct aml8726_rtc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int
FUNC6(struct aml8726_rtc_softc *sc)
{
	int error;
	unsigned i;

	/* idle the serial interface */
	FUNC2(sc, AML_RTC_0_REG, (FUNC1(sc, AML_RTC_0_REG) &
	    ~(AML_RTC_SCLK | AML_RTC_SEN | AML_RTC_SDI)));

	FUNC0(sc, AML_RTC_0_REG);

	/* see if it is ready for a new cycle */
	for (i = 40; i; i--) {
		FUNC3(5);
		if ( (FUNC1(sc, AML_RTC_1_REG) & AML_RTC_SRDY) )
			break;
	}

	if (sc->init.always == TRUE || (FUNC1(sc, AML_RTC_1_REG) &
	    AML_RTC_SRDY) == 0) {

		/*
		 * The RTC has a 16 bit initialization register.  The upper
		 * bits can be written directly.  The lower bits are written
		 * through a shift register.
		 */

		FUNC2(sc, AML_RTC_4_REG, ((sc->init.xo >> 8) & 0xff));

		FUNC2(sc, AML_RTC_0_REG,
		    ((FUNC1(sc, AML_RTC_0_REG) & 0xffffff) |
		    ((uint32_t)(sc->init.xo & 0xff) << 24) | AML_RTC_AS |
		    AML_RTC_IRQ_DIS));

		while ((FUNC1(sc, AML_RTC_0_REG) & AML_RTC_ABSY) != 0)
			FUNC5();

		FUNC3(2);

		error = FUNC4(sc, AML_RTC_GPO_SREG,
		    sc->init.gpo);

		if (error)
			return (error);
	}

	return (0);
}
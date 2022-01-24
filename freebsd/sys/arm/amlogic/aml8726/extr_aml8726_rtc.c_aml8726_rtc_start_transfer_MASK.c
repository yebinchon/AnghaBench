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
struct aml8726_rtc_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AML_RTC_0_REG ; 
 int /*<<< orphan*/  AML_RTC_1_REG ; 
 int AML_RTC_SCLK ; 
 int AML_RTC_SDI ; 
 int AML_RTC_SEN ; 
 int AML_RTC_SRDY ; 
 int /*<<< orphan*/  FUNC0 (struct aml8726_rtc_softc*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct aml8726_rtc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct aml8726_rtc_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int EIO ; 

__attribute__((used)) static int
FUNC4(struct aml8726_rtc_softc *sc)
{
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

	if (i == 0)
		return (EIO);

	/* start the cycle */
	FUNC2(sc, AML_RTC_0_REG, (FUNC1(sc, AML_RTC_0_REG) |
	    AML_RTC_SEN));

	return (0);
}
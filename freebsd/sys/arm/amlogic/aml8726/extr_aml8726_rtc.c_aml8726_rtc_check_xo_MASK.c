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
struct aml8726_rtc_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AML_RTC_2_REG ; 
 int /*<<< orphan*/  AML_RTC_3_REG ; 
 int AML_RTC_MSR_CA ; 
 int FUNC0 (struct aml8726_rtc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct aml8726_rtc_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int EINVAL ; 

__attribute__((used)) static int
FUNC3(struct aml8726_rtc_softc *sc)
{
	uint32_t now, previous;
	int i;

	/*
	 * The RTC is driven by a 32.768khz clock meaning it's period
	 * is roughly 30.5 us.  Check that it's working (implying the
	 * RTC could contain a valid value) by enabling count always
	 * and seeing if the value changes after 200 us (per RTC User
	 * Guide ... presumably the extra time is to cover XO startup).
	 */

	FUNC1(sc, AML_RTC_3_REG, (FUNC0(sc, AML_RTC_3_REG) |
	    AML_RTC_MSR_CA));

	previous = FUNC0(sc, AML_RTC_2_REG);

	for (i = 0; i < 4; i++) {
		FUNC2(50);
		now = FUNC0(sc, AML_RTC_2_REG);
		if (now != previous)
			break;
	}

	FUNC1(sc, AML_RTC_3_REG, (FUNC0(sc, AML_RTC_3_REG) &
	    ~AML_RTC_MSR_CA));

	if (now == previous)
		return (EINVAL);

	return (0);
}
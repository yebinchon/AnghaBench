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
 int AML_RTC_SCLK ; 
 int /*<<< orphan*/  FUNC0 (struct aml8726_rtc_softc*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct aml8726_rtc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct aml8726_rtc_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static inline void
FUNC4(struct aml8726_rtc_softc *sc)
{

	FUNC3(5);

	FUNC2(sc, AML_RTC_0_REG, (FUNC1(sc, AML_RTC_0_REG) |
	    AML_RTC_SCLK));

	FUNC0(sc, AML_RTC_0_REG);

	FUNC3(5);

	FUNC2(sc, AML_RTC_0_REG, (FUNC1(sc, AML_RTC_0_REG) &
	    ~AML_RTC_SCLK));

	FUNC0(sc, AML_RTC_0_REG);
}
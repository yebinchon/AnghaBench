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
typedef  int /*<<< orphan*/  uint32_t ;
struct timespec {scalar_t__ tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct aml8726_rtc_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aml8726_rtc_softc*) ; 
 int /*<<< orphan*/  AML_RTC_TIME_SREG ; 
 int /*<<< orphan*/  FUNC1 (struct aml8726_rtc_softc*) ; 
 int FUNC2 (struct aml8726_rtc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct aml8726_rtc_softc* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev, struct timespec *ts)
{
	struct aml8726_rtc_softc *sc = FUNC3(dev);
	uint32_t sec;
	int error;

	FUNC0(sc);

	error = FUNC2(sc, AML_RTC_TIME_SREG, &sec);

	FUNC1(sc);

	ts->tv_sec = sec;
	ts->tv_nsec = 0;

	return (error);
}
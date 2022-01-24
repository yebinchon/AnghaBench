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
 int /*<<< orphan*/  AML_RTC_1_REG ; 
 int AML_RTC_SDO ; 
 int FUNC0 (struct aml8726_rtc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct aml8726_rtc_softc*) ; 

__attribute__((used)) static inline void
FUNC2(struct aml8726_rtc_softc *sc, uint32_t *dp)
{
	uint32_t data;
	unsigned i;

	data = 0;

	for (i = 0; i < 32; i++) {
		FUNC1(sc);
		data <<= 1;
		data |= (FUNC0(sc, AML_RTC_1_REG) & AML_RTC_SDO) ? 1 : 0;
	}

	*dp = data;
}
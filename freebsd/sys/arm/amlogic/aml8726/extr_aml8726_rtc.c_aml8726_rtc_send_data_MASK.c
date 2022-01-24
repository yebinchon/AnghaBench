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
typedef  unsigned int uint32_t ;
struct aml8726_rtc_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aml8726_rtc_softc*,unsigned int) ; 

__attribute__((used)) static inline void
FUNC1(struct aml8726_rtc_softc *sc, uint32_t data)
{
	unsigned mask;

	for (mask = 1U << 31; mask; mask >>= 1)
		FUNC0(sc, (data & mask));
}
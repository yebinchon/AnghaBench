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
struct timecounter {struct arm_tmr_softc* tc_priv; } ;
struct arm_tmr_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GBL_TIMER_COUNT_LOW ; 
 int FUNC0 (struct arm_tmr_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned
FUNC1(struct timecounter *tc)
{
	struct arm_tmr_softc *sc;

	sc = tc->tc_priv;
	return (FUNC0(sc, GBL_TIMER_COUNT_LOW));
}
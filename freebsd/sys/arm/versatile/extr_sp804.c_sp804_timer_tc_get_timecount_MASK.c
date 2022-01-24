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
struct timecounter {struct sp804_timer_softc* tc_priv; } ;
struct sp804_timer_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SP804_TIMER1_VALUE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned
FUNC1(struct timecounter *tc)
{
	struct sp804_timer_softc *sc = tc->tc_priv;
	return 0xffffffff - FUNC0(SP804_TIMER1_VALUE);
}
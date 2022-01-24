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
struct timecounter {struct am335x_dmtimer_softc* tc_priv; } ;
struct am335x_dmtimer_softc {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct am335x_dmtimer_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMT_TCRR ; 

__attribute__((used)) static unsigned
FUNC1(struct timecounter *tc)
{
	struct am335x_dmtimer_softc *sc;

	sc = tc->tc_priv;

	return (FUNC0(sc, DMT_TCRR));
}
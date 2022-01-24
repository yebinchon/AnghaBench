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
struct eventtimer {struct arm_tmr_softc* et_priv; } ;
struct arm_tmr_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PRV_TIMER_CTRL ; 
 int /*<<< orphan*/  PRV_TIMER_INTR ; 
 int /*<<< orphan*/  PRV_TIMER_INTR_EVENT ; 
 int /*<<< orphan*/  FUNC0 (struct arm_tmr_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(struct eventtimer *et)
{
	struct arm_tmr_softc *sc;

	sc = et->et_priv;
	FUNC0(sc, PRV_TIMER_CTRL, 0);
	FUNC0(sc, PRV_TIMER_INTR, PRV_TIMER_INTR_EVENT);
	return (0);
}
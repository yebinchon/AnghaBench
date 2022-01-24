#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/  timer_bsh; int /*<<< orphan*/  timer_bst; } ;

/* Variables and functions */
 scalar_t__ CPU_TIMER0_REL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 TYPE_1__* timer_softc ; 

__attribute__((used)) static void
FUNC1(uint32_t timer, uint32_t val)
{

	FUNC0(timer_softc->timer_bst,
	    timer_softc->timer_bsh, CPU_TIMER0_REL + timer * 0x8, val);
}
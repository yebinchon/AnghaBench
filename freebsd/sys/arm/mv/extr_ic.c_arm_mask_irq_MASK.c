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
struct TYPE_2__ {scalar_t__ ic_error_regs; scalar_t__ ic_high_regs; } ;

/* Variables and functions */
 int FUNC0 () ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 TYPE_1__* mv_ic_sc ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

void
FUNC6(uintptr_t nb)
{
	uint32_t	mr;

	if (nb < 32) {
		mr = FUNC0();
		mr &= ~(1 << nb);
		FUNC3(mr);

	} else if ((nb < 64) && mv_ic_sc->ic_high_regs) {
		mr = FUNC2();
		mr &= ~(1 << (nb - 32));
		FUNC5(mr);

	} else if ((nb < 96) && mv_ic_sc->ic_error_regs) {
		mr = FUNC1();
		mr &= ~(1 << (nb - 64));
		FUNC4(mr);
	}
}
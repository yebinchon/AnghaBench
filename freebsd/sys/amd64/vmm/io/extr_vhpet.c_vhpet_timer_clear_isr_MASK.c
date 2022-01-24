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
struct vhpet {int isr; int /*<<< orphan*/  vm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (struct vhpet*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(struct vhpet *vhpet, int n)
{
	int pin;

	if (vhpet->isr & (1 << n)) {
		pin = FUNC1(vhpet, n);
		FUNC0(pin != 0, ("vhpet timer %d irq incorrectly routed", n));
		FUNC2(vhpet->vm, pin);
		vhpet->isr &= ~(1 << n);
	}
}
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
typedef  int /*<<< orphan*/  t_Error ;
struct resource {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int flags; int /*<<< orphan*/  cookie; int /*<<< orphan*/ * arg; int /*<<< orphan*/ * handler; } ;

/* Variables and functions */
 int /*<<< orphan*/  E_INVALID_STATE ; 
 int /*<<< orphan*/  E_OK ; 
 int XX_INTR_FLAG_PREALLOCATED ; 
 TYPE_1__* XX_IntrInfo ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct resource*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct resource*) ; 
 uintptr_t FUNC2 (struct resource*) ; 

t_Error
FUNC3(uintptr_t irq)
{
	device_t dev;
	struct resource *r;

	r = (struct resource *)irq;
	dev = FUNC1(r);
	irq = FUNC2(r);

	/* Handle preallocated interrupts */
	if (XX_IntrInfo[irq].flags & XX_INTR_FLAG_PREALLOCATED) {
		if (XX_IntrInfo[irq].handler == NULL)
			return (E_INVALID_STATE);

		XX_IntrInfo[irq].handler = NULL;
		XX_IntrInfo[irq].arg = NULL;

		return (E_OK);
	}

	return (FUNC0(dev, r, XX_IntrInfo[irq].cookie));
}
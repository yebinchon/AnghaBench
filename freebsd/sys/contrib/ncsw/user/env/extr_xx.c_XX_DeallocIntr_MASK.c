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
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  E_INVALID_STATE ; 
 int /*<<< orphan*/  FUNC0 (uintptr_t) ; 
 int XX_INTR_FLAG_PREALLOCATED ; 
 TYPE_1__* XX_IntrInfo ; 
 unsigned int FUNC1 (struct resource*) ; 

t_Error
FUNC2(uintptr_t irq)
{
	struct resource *r;
	unsigned int inum;

	r = (struct resource *)irq;
	inum = FUNC1(r);

	if ((XX_IntrInfo[inum].flags & XX_INTR_FLAG_PREALLOCATED) == 0)
		return (E_INVALID_STATE);

	XX_IntrInfo[inum].flags = 0;
	return (FUNC0(irq));
}
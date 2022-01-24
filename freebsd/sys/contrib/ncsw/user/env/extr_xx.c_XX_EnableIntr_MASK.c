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
typedef  int /*<<< orphan*/  t_Error ;
struct resource {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  E_OK ; 
 int /*<<< orphan*/  FUNC0 (uintptr_t) ; 
 uintptr_t FUNC1 (struct resource*) ; 

t_Error
FUNC2(uintptr_t irq)
{
	struct resource *r;

	r = (struct resource *)irq;
	irq = FUNC1(r);

	FUNC0(irq);

	return (E_OK);
}
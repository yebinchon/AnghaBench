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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct x86emu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct x86emu*,int) ; 

__attribute__((used)) static void
FUNC4(struct x86emu *emu, uint32_t addr, uint16_t val)
{
	uint16_t *va;

	va = FUNC2(addr, sizeof(*va));
	if (va == NULL)
		FUNC3(emu, addr);

#ifndef __NO_STRICT_ALIGNMENT
	if ((addr & 1) != 0)
		FUNC1(va, val);
	else
#endif
	*va = FUNC0(val);
}
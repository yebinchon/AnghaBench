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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_2__ {int mode; } ;
struct x86emu {TYPE_1__ x86; } ;

/* Variables and functions */
 int SYSMODE_PREFIX_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC1 (struct x86emu*) ; 
 int /*<<< orphan*/ * FUNC2 (struct x86emu*) ; 
 int /*<<< orphan*/ * FUNC3 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC4 (struct x86emu*) ; 

__attribute__((used)) static void
FUNC5(struct x86emu *emu)
{
	if (emu->x86.mode & SYSMODE_PREFIX_DATA) {
		uint32_t *destreg;

		FUNC4(emu);
		destreg = FUNC2(emu);
		*destreg = FUNC0(emu);
	} else {
		uint16_t *destreg;

		FUNC4(emu);
		destreg = FUNC3(emu);
		*destreg = FUNC1(emu);
	}
}
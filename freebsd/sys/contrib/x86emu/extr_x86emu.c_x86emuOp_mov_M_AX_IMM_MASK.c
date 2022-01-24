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
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_2__ {int mode; int /*<<< orphan*/  R_AX; int /*<<< orphan*/  R_EAX; } ;
struct x86emu {TYPE_1__ x86; } ;

/* Variables and functions */
 int SYSMODE_PREFIX_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC1 (struct x86emu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct x86emu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct x86emu *emu)
{
	uint16_t offset;

	offset = FUNC0(emu);
	if (emu->x86.mode & SYSMODE_PREFIX_DATA) {
		FUNC1(emu, offset, emu->x86.R_EAX);
	} else {
		FUNC2(emu, offset, emu->x86.R_AX);
	}
}
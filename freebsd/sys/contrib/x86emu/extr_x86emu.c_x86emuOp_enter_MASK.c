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
typedef  int uint8_t ;
typedef  void* uint16_t ;
struct TYPE_2__ {void* R_BP; void* R_SP; int /*<<< orphan*/  R_SS; } ;
struct x86emu {TYPE_1__ x86; } ;

/* Variables and functions */
 int FUNC0 (struct x86emu*) ; 
 void* FUNC1 (struct x86emu*,int /*<<< orphan*/ ,int) ; 
 void* FUNC2 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC3 (struct x86emu*,void*) ; 

__attribute__((used)) static void
FUNC4(struct x86emu *emu)
{
	uint16_t local, frame_pointer;
	uint8_t nesting;
	int i;

	local = FUNC2(emu);
	nesting = FUNC0(emu);
	FUNC3(emu, emu->x86.R_BP);
	frame_pointer = emu->x86.R_SP;
	if (nesting > 0) {
		for (i = 1; i < nesting; i++) {
			emu->x86.R_BP -= 2;
			FUNC3(emu, FUNC1(emu, emu->x86.R_SS,
			    emu->x86.R_BP));
		}
		FUNC3(emu, frame_pointer);
	}
	emu->x86.R_BP = frame_pointer;
	emu->x86.R_SP = (uint16_t) (emu->x86.R_SP - local);
}
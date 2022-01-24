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
struct TYPE_2__ {int /*<<< orphan*/  R_AX; } ;
struct x86emu {TYPE_1__ x86; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct x86emu*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC2 (struct x86emu*) ; 

__attribute__((used)) static void
FUNC3(struct x86emu *emu)
{
	uint8_t a;

	a = FUNC1(emu);
	if (a != 10) {
		/* fix: add base decoding aad_word(uint16_t val, int base a) */
		FUNC2(emu);
	}
	emu->x86.R_AX = FUNC0(emu, emu->x86.R_AX);
}
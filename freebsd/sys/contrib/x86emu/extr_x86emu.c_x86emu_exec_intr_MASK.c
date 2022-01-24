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
struct TYPE_2__ {scalar_t__ intr; int /*<<< orphan*/  R_IP; int /*<<< orphan*/  R_CS; int /*<<< orphan*/  R_FLG; } ;
struct x86emu {TYPE_1__ x86; int /*<<< orphan*/  (* emu_rdw ) (struct x86emu*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  F_IF ; 
 int /*<<< orphan*/  F_TF ; 
 int /*<<< orphan*/  FUNC1 (struct x86emu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct x86emu*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct x86emu*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct x86emu*) ; 

void
FUNC5(struct x86emu *emu, uint8_t intr)
{
	FUNC1(emu, emu->x86.R_FLG);
	FUNC0(F_IF);
	FUNC0(F_TF);
	FUNC1(emu, 0);
	FUNC1(emu, 0);
	emu->x86.R_CS = (*emu->emu_rdw)(emu, intr * 4 + 2);
	emu->x86.R_IP = (*emu->emu_rdw)(emu, intr * 4);
	emu->x86.intr = 0;

	FUNC4(emu);
}
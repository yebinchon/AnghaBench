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
struct TYPE_2__ {int mode; int /*<<< orphan*/  R_DX; int /*<<< orphan*/  R_AX; int /*<<< orphan*/  R_EAX; } ;
struct x86emu {TYPE_1__ x86; int /*<<< orphan*/  (* emu_inw ) (struct x86emu*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* emu_inl ) (struct x86emu*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int SYSMODE_PREFIX_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct x86emu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct x86emu*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct x86emu *emu)
{
	if (emu->x86.mode & SYSMODE_PREFIX_DATA) {
		emu->x86.R_EAX = (*emu->emu_inl) (emu, emu->x86.R_DX);
	} else {
		emu->x86.R_AX = (*emu->emu_inw) (emu, emu->x86.R_DX);
	}
}
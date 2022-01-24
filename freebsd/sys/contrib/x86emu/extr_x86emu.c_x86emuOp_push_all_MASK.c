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
struct TYPE_2__ {int mode; int /*<<< orphan*/  R_DI; int /*<<< orphan*/  R_SI; int /*<<< orphan*/  R_BP; int /*<<< orphan*/  R_BX; int /*<<< orphan*/  R_DX; int /*<<< orphan*/  R_CX; int /*<<< orphan*/  R_AX; int /*<<< orphan*/  R_SP; int /*<<< orphan*/  R_EDI; int /*<<< orphan*/  R_ESI; int /*<<< orphan*/  R_EBP; int /*<<< orphan*/  R_EBX; int /*<<< orphan*/  R_EDX; int /*<<< orphan*/  R_ECX; int /*<<< orphan*/  R_EAX; int /*<<< orphan*/  R_ESP; } ;
struct x86emu {TYPE_1__ x86; } ;

/* Variables and functions */
 int SYSMODE_PREFIX_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct x86emu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct x86emu*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct x86emu *emu)
{
	if (emu->x86.mode & SYSMODE_PREFIX_DATA) {
		uint32_t old_sp = emu->x86.R_ESP;

		FUNC0(emu, emu->x86.R_EAX);
		FUNC0(emu, emu->x86.R_ECX);
		FUNC0(emu, emu->x86.R_EDX);
		FUNC0(emu, emu->x86.R_EBX);
		FUNC0(emu, old_sp);
		FUNC0(emu, emu->x86.R_EBP);
		FUNC0(emu, emu->x86.R_ESI);
		FUNC0(emu, emu->x86.R_EDI);
	} else {
		uint16_t old_sp = emu->x86.R_SP;

		FUNC1(emu, emu->x86.R_AX);
		FUNC1(emu, emu->x86.R_CX);
		FUNC1(emu, emu->x86.R_DX);
		FUNC1(emu, emu->x86.R_BX);
		FUNC1(emu, old_sp);
		FUNC1(emu, emu->x86.R_BP);
		FUNC1(emu, emu->x86.R_SI);
		FUNC1(emu, emu->x86.R_DI);
	}
}
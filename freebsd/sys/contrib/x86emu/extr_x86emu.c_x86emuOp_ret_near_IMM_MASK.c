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
typedef  scalar_t__ uint16_t ;
struct TYPE_2__ {int /*<<< orphan*/  R_SP; int /*<<< orphan*/  R_IP; } ;
struct x86emu {TYPE_1__ x86; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC1 (struct x86emu*) ; 

__attribute__((used)) static void
FUNC2(struct x86emu *emu)
{
	uint16_t imm;

	imm = FUNC0(emu);
	emu->x86.R_IP = FUNC1(emu);
	emu->x86.R_SP += imm;
}
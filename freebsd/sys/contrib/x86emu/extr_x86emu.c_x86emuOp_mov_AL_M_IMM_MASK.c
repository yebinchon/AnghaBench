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
struct TYPE_2__ {int /*<<< orphan*/  R_AL; } ;
struct x86emu {TYPE_1__ x86; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct x86emu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct x86emu*) ; 

__attribute__((used)) static void
FUNC2(struct x86emu *emu)
{
	uint16_t offset;

	offset = FUNC1(emu);
	emu->x86.R_AL = FUNC0(emu, offset);
}
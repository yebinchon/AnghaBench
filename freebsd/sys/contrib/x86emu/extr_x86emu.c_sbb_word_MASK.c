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
typedef  int uint16_t ;
struct x86emu {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  F_AF ; 
 int /*<<< orphan*/  F_CF ; 
 int /*<<< orphan*/  F_OF ; 
 int /*<<< orphan*/  F_PF ; 
 int /*<<< orphan*/  F_SF ; 
 int /*<<< orphan*/  F_ZF ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 

__attribute__((used)) static uint16_t 
FUNC4(struct x86emu *emu, uint16_t d, uint16_t s)
{
	uint32_t res;	/* all operands in native machine order */
	uint32_t bc;

	if (FUNC0(F_CF))
		res = d - s - 1;
	else
		res = d - s;
	FUNC1(res & 0x8000, F_SF);
	FUNC1((res & 0xffff) == 0, F_ZF);
	FUNC1(FUNC2(res & 0xff), F_PF);

	/* calculate the borrow chain.  See note at top */
	bc = (res & (~d | s)) | (~d & s);
	FUNC1(bc & 0x8000, F_CF);
	FUNC1(FUNC3(bc >> 14), F_OF);
	FUNC1(bc & 0x8, F_AF);
	return (uint16_t) res;
}
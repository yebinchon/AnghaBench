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
typedef  int uint8_t ;
typedef  int uint32_t ;
struct x86emu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  F_AF ; 
 int /*<<< orphan*/  F_OF ; 
 int /*<<< orphan*/  F_PF ; 
 int /*<<< orphan*/  F_SF ; 
 int /*<<< orphan*/  F_ZF ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 

__attribute__((used)) static uint8_t 
FUNC3(struct x86emu *emu, uint8_t d)
{
	uint32_t res;	/* all operands in native machine order */
	uint32_t bc;

	res = d - 1;
	FUNC0(res & 0x80, F_SF);
	FUNC0((res & 0xff) == 0, F_ZF);
	FUNC0(FUNC1(res & 0xff), F_PF);

	/* calculate the borrow chain.  See note at top */
	/* based on sub_byte, uses s==1.  */
	bc = (res & (~d | 1)) | (~d & 1);
	/* carry flag unchanged */
	FUNC0(FUNC2(bc >> 6), F_OF);
	FUNC0(bc & 0x8, F_AF);
	return (uint8_t) res;
}
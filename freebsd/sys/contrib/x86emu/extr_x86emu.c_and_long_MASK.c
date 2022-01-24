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
struct x86emu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  F_AF ; 
 int /*<<< orphan*/  F_CF ; 
 int /*<<< orphan*/  F_OF ; 
 int /*<<< orphan*/  F_PF ; 
 int /*<<< orphan*/  F_SF ; 
 int /*<<< orphan*/  F_ZF ; 
 int FUNC2 (int) ; 

__attribute__((used)) static uint32_t 
FUNC3(struct x86emu *emu, uint32_t d, uint32_t s)
{
	uint32_t res;	/* all operands in native machine order */

	res = d & s;

	/* set the flags  */
	FUNC0(F_OF);
	FUNC0(F_CF);
	FUNC0(F_AF);
	FUNC1(res & 0x80000000, F_SF);
	FUNC1(res == 0, F_ZF);
	FUNC1(FUNC2(res & 0xff), F_PF);
	return res;
}
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
struct x86emu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  F_AF ; 
 int /*<<< orphan*/  F_CF ; 
 int /*<<< orphan*/  F_OF ; 
 int /*<<< orphan*/  F_PF ; 
 int /*<<< orphan*/  F_SF ; 
 int /*<<< orphan*/  F_ZF ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 

__attribute__((used)) static uint8_t 
FUNC3(struct x86emu *emu, uint8_t s)
{
	uint8_t res;
	uint8_t bc;

	FUNC0(s != 0, F_CF);
	res = (uint8_t) - s;
	FUNC0((res & 0xff) == 0, F_ZF);
	FUNC0(res & 0x80, F_SF);
	FUNC0(FUNC1(res), F_PF);
	/* calculate the borrow chain --- modified such that d=0.
	 * substitutiing d=0 into     bc= res&(~d|s)|(~d&s); (the one used for
	 * sub) and simplifying, since ~d=0xff..., ~d|s == 0xffff..., and
	 * res&0xfff... == res.  Similarly ~d&s == s.  So the simplified
	 * result is: */
	bc = res | s;
	FUNC0(FUNC2(bc >> 6), F_OF);
	FUNC0(bc & 0x8, F_AF);
	return res;
}
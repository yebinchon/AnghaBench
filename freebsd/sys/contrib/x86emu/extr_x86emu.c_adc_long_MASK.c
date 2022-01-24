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

__attribute__((used)) static uint32_t 
FUNC4(struct x86emu *emu, uint32_t d, uint32_t s)
{
	uint32_t lo;	/* all operands in native machine order */
	uint32_t hi;
	uint32_t res;
	uint32_t cc;

	if (FUNC0(F_CF)) {
		lo = 1 + (d & 0xFFFF) + (s & 0xFFFF);
		res = 1 + d + s;
	} else {
		lo = (d & 0xFFFF) + (s & 0xFFFF);
		res = d + s;
	}
	hi = (lo >> 16) + (d >> 16) + (s >> 16);

	FUNC1(hi & 0x10000, F_CF);
	FUNC1((res & 0xffffffff) == 0, F_ZF);
	FUNC1(res & 0x80000000, F_SF);
	FUNC1(FUNC2(res & 0xff), F_PF);

	/* calculate the carry chain  SEE NOTE AT TOP. */
	cc = (s & d) | ((~res) & (s | d));
	FUNC1(FUNC3(cc >> 30), F_OF);
	FUNC1(cc & 0x8, F_AF);
	return res;
}
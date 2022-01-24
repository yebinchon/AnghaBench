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
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  F_AF ; 
 int /*<<< orphan*/  F_CF ; 
 int /*<<< orphan*/  F_OF ; 
 int /*<<< orphan*/  F_PF ; 
 int /*<<< orphan*/  F_SF ; 
 int /*<<< orphan*/  F_ZF ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 

__attribute__((used)) static uint32_t 
FUNC3(struct x86emu *emu, uint32_t d, uint32_t s)
{
	uint32_t lo;	/* all operands in native machine order */
	uint32_t hi;
	uint32_t res;
	uint32_t cc;

	lo = (d & 0xFFFF) + (s & 0xFFFF);
	res = d + s;
	hi = (lo >> 16) + (d >> 16) + (s >> 16);

	FUNC0(hi & 0x10000, F_CF);
	FUNC0((res & 0xffffffff) == 0, F_ZF);
	FUNC0(res & 0x80000000, F_SF);
	FUNC0(FUNC1(res & 0xff), F_PF);

	/* calculate the carry chain  SEE NOTE AT TOP. */
	cc = (s & d) | ((~res) & (s | d));
	FUNC0(FUNC2(cc >> 30), F_OF);
	FUNC0(cc & 0x8, F_AF);

	return res;
}
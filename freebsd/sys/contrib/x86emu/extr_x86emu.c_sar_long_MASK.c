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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  F_CF ; 
 int /*<<< orphan*/  F_PF ; 
 int /*<<< orphan*/  F_SF ; 
 int /*<<< orphan*/  F_ZF ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint32_t 
FUNC4(struct x86emu *emu, uint32_t d, uint8_t s)
{
	uint32_t cnt, res, cf, mask, sf;

	sf = d & 0x80000000;
	cnt = s % 32;
	res = d;
	if (cnt > 0 && cnt < 32) {
		mask = (1 << (32 - cnt)) - 1;
		cf = d & (1 << (cnt - 1));
		res = (d >> cnt) & mask;
		FUNC1(cf, F_CF);
		if (sf) {
			res |= ~mask;
		}
		FUNC1((res & 0xffffffff) == 0, F_ZF);
		FUNC1(res & 0x80000000, F_SF);
		FUNC1(FUNC2(res & 0xff), F_PF);
	} else if (cnt >= 32) {
		if (sf) {
			res = 0xffffffff;
			FUNC3(F_CF);
			FUNC0(F_ZF);
			FUNC3(F_SF);
			FUNC3(F_PF);
		} else {
			res = 0;
			FUNC0(F_CF);
			FUNC3(F_ZF);
			FUNC0(F_SF);
			FUNC0(F_PF);
		}
	}
	return res;
}
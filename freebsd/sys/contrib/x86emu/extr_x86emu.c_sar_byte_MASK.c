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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  F_CF ; 
 int /*<<< orphan*/  F_PF ; 
 int /*<<< orphan*/  F_SF ; 
 int /*<<< orphan*/  F_ZF ; 
 unsigned int FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint8_t 
FUNC4(struct x86emu *emu, uint8_t d, uint8_t s)
{
	unsigned int cnt, res, cf, mask, sf;

	res = d;
	sf = d & 0x80;
	cnt = s % 8;
	if (cnt > 0 && cnt < 8) {
		mask = (1 << (8 - cnt)) - 1;
		cf = d & (1 << (cnt - 1));
		res = (d >> cnt) & mask;
		FUNC1(cf, F_CF);
		if (sf) {
			res |= ~mask;
		}
		FUNC1((res & 0xff) == 0, F_ZF);
		FUNC1(FUNC2(res & 0xff), F_PF);
		FUNC1(res & 0x80, F_SF);
	} else if (cnt >= 8) {
		if (sf) {
			res = 0xff;
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
	return (uint8_t) res;
}
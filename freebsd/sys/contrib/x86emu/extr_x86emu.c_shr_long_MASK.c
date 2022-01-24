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
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  F_CF ; 
 int /*<<< orphan*/  F_OF ; 
 int /*<<< orphan*/  F_PF ; 
 int /*<<< orphan*/  F_SF ; 
 int /*<<< orphan*/  F_ZF ; 
 unsigned int FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (unsigned int) ; 

__attribute__((used)) static uint32_t 
FUNC5(struct x86emu *emu, uint32_t d, uint8_t s)
{
	unsigned int cnt, res, cf;

	if (s < 32) {
		cnt = s % 32;
		if (cnt > 0) {
			cf = d & (1 << (cnt - 1));
			res = d >> cnt;
			FUNC1(cf, F_CF);
			FUNC1((res & 0xffffffff) == 0, F_ZF);
			FUNC1(res & 0x80000000, F_SF);
			FUNC1(FUNC2(res & 0xff), F_PF);
		} else {
			res = d;
		}
		if (cnt == 1) {
			FUNC1(FUNC4(res >> 30), F_OF);
		} else {
			FUNC0(F_OF);
		}
	} else {
		res = 0;
		FUNC0(F_CF);
		FUNC0(F_OF);
		FUNC3(F_ZF);
		FUNC0(F_SF);
		FUNC0(F_PF);
	}
	return res;
}
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
typedef  unsigned int uint32_t ;
struct x86emu {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  F_CF ; 
 int /*<<< orphan*/  F_OF ; 
 int /*<<< orphan*/  F_PF ; 
 int /*<<< orphan*/  F_SF ; 
 int /*<<< orphan*/  F_ZF ; 
 unsigned int FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint32_t 
FUNC5(struct x86emu *emu, uint32_t d, uint8_t s)
{
	unsigned int cnt, res, cf;

	if (s < 32) {
		cnt = s % 32;
		if (cnt > 0) {
			res = d << cnt;
			cf = d & (1 << (32 - cnt));
			FUNC2(cf, F_CF);
			FUNC2((res & 0xffffffff) == 0, F_ZF);
			FUNC2(res & 0x80000000, F_SF);
			FUNC2(FUNC3(res & 0xff), F_PF);
		} else {
			res = d;
		}
		if (cnt == 1) {
			FUNC2((((res & 0x80000000) == 0x80000000)
			    ^ (FUNC0(F_CF) != 0)), F_OF);
		} else {
			FUNC1(F_OF);
		}
	} else {
		res = 0;
		FUNC2((d << (s - 1)) & 0x80000000, F_CF);
		FUNC1(F_OF);
		FUNC1(F_SF);
		FUNC4(F_PF);
		FUNC4(F_ZF);
	}
	return res;
}
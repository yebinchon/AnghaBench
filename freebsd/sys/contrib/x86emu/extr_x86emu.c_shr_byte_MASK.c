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
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  F_CF ; 
 int /*<<< orphan*/  F_OF ; 
 int /*<<< orphan*/  F_PF ; 
 int /*<<< orphan*/  F_SF ; 
 int /*<<< orphan*/  F_ZF ; 
 int FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (unsigned int) ; 

__attribute__((used)) static uint8_t 
FUNC5(struct x86emu *emu, uint8_t d, uint8_t s)
{
	unsigned int cnt, res, cf;

	if (s < 8) {
		cnt = s % 8;
		if (cnt > 0) {
			cf = d & (1 << (cnt - 1));
			res = d >> cnt;
			FUNC1(cf, F_CF);
			FUNC1((res & 0xff) == 0, F_ZF);
			FUNC1(res & 0x80, F_SF);
			FUNC1(FUNC2(res & 0xff), F_PF);
		} else {
			res = (uint8_t) d;
		}

		if (cnt == 1) {
			FUNC1(FUNC4(res >> 6), F_OF);
		} else {
			FUNC0(F_OF);
		}
	} else {
		res = 0;
		FUNC1((d >> (s - 1)) & 0x1, F_CF);
		FUNC0(F_OF);
		FUNC0(F_SF);
		FUNC3(F_PF);
		FUNC3(F_ZF);
	}
	return (uint8_t) res;
}
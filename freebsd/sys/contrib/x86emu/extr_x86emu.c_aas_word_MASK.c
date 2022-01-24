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
typedef  int uint16_t ;
struct x86emu {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  F_AF ; 
 int /*<<< orphan*/  F_CF ; 
 int /*<<< orphan*/  F_PF ; 
 int /*<<< orphan*/  F_SF ; 
 int /*<<< orphan*/  F_ZF ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint16_t 
FUNC5(struct x86emu *emu, uint16_t d)
{
	uint16_t res;
	if ((d & 0xf) > 0x9 || FUNC0(F_AF)) {
		d -= 0x6;
		d -= 0x100;
		FUNC4(F_AF);
		FUNC4(F_CF);
	} else {
		FUNC1(F_CF);
		FUNC1(F_AF);
	}
	res = (uint16_t) (d & 0xFF0F);
	FUNC1(F_SF);
	FUNC2(res == 0, F_ZF);
	FUNC2(FUNC3(res & 0xff), F_PF);
	return res;
}
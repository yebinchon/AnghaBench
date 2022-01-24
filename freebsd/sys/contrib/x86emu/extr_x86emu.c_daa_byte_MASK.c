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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  F_AF ; 
 int /*<<< orphan*/  F_CF ; 
 int /*<<< orphan*/  F_PF ; 
 int /*<<< orphan*/  F_SF ; 
 int /*<<< orphan*/  F_ZF ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint8_t 
FUNC4(struct x86emu *emu, uint8_t d)
{
	uint32_t res = d;
	if ((d & 0xf) > 9 || FUNC0(F_AF)) {
		res += 6;
		FUNC3(F_AF);
	}
	if (res > 0x9F || FUNC0(F_CF)) {
		res += 0x60;
		FUNC3(F_CF);
	}
	FUNC1(res & 0x80, F_SF);
	FUNC1((res & 0xFF) == 0, F_ZF);
	FUNC1(FUNC2(res & 0xff), F_PF);
	return (uint8_t) res;
}
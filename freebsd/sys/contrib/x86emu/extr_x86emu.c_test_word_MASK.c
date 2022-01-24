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
typedef  int uint16_t ;
struct x86emu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  F_CF ; 
 int /*<<< orphan*/  F_OF ; 
 int /*<<< orphan*/  F_PF ; 
 int /*<<< orphan*/  F_SF ; 
 int /*<<< orphan*/  F_ZF ; 
 int FUNC2 (int) ; 

__attribute__((used)) static void 
FUNC3(struct x86emu *emu, uint16_t d, uint16_t s)
{
	uint32_t res;	/* all operands in native machine order */

	res = d & s;

	FUNC0(F_OF);
	FUNC1(res & 0x8000, F_SF);
	FUNC1(res == 0, F_ZF);
	FUNC1(FUNC2(res & 0xff), F_PF);
	/* AF == dont care */
	FUNC0(F_CF);
}
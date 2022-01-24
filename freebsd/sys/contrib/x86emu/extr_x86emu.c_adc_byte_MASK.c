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
 int /*<<< orphan*/  F_OF ; 
 int /*<<< orphan*/  F_PF ; 
 int /*<<< orphan*/  F_SF ; 
 int /*<<< orphan*/  F_ZF ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 

__attribute__((used)) static uint8_t 
FUNC4(struct x86emu *emu, uint8_t d, uint8_t s)
{
	uint32_t res;	/* all operands in native machine order */
	uint32_t cc;

	if (FUNC0(F_CF))
		res = 1 + d + s;
	else
		res = d + s;

	FUNC1(res & 0x100, F_CF);
	FUNC1((res & 0xff) == 0, F_ZF);
	FUNC1(res & 0x80, F_SF);
	FUNC1(FUNC2(res & 0xff), F_PF);

	/* calculate the carry chain  SEE NOTE AT TOP. */
	cc = (s & d) | ((~res) & (s | d));
	FUNC1(FUNC3(cc >> 6), F_OF);
	FUNC1(cc & 0x8, F_AF);
	return (uint8_t) res;
}
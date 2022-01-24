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
 int /*<<< orphan*/  F_ZF ; 
 int FUNC1 (struct x86emu*) ; 
 int* FUNC2 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC3 (struct x86emu*) ; 

__attribute__((used)) static void
FUNC4(struct x86emu *emu, int diff)
{
	uint32_t srcval, *dstreg;

	FUNC3(emu);
	dstreg = FUNC2(emu);
	srcval = FUNC1(emu);
	FUNC0(srcval == 0, F_ZF);
	for (*dstreg = 0; *dstreg < 32; *dstreg += diff) {
		if ((srcval >> *dstreg) & 1)
			break;
	}
}
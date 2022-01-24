#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int mode; scalar_t__ R_IP; scalar_t__ R_EIP; } ;
struct x86emu {TYPE_1__ x86; } ;
typedef  scalar_t__ int32_t ;
typedef  scalar_t__ int16_t ;

/* Variables and functions */
 int SYSMODE_PREFIX_DATA ; 
 scalar_t__ FUNC0 (struct x86emu*) ; 
 scalar_t__ FUNC1 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC2 (struct x86emu*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct x86emu*,scalar_t__) ; 

__attribute__((used)) static void
FUNC4(struct x86emu *emu)
{
	if (emu->x86.mode & SYSMODE_PREFIX_DATA) {
		int32_t ip;
		ip = (int32_t) FUNC0(emu);
		ip += (int32_t) emu->x86.R_EIP;
		FUNC2(emu, emu->x86.R_EIP);
		emu->x86.R_EIP = ip;
	} else {
		int16_t ip;
		ip = (int16_t) FUNC1(emu);
		ip += (int16_t) emu->x86.R_IP;	/* CHECK SIGN */
		FUNC3(emu, emu->x86.R_IP);
		emu->x86.R_IP = ip;
	}
}
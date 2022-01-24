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
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

__attribute__((used)) static void
FUNC2(struct x86emu *emu, uint16_t port, uint16_t val)
{

#ifndef X86BIOS_NATIVE_ARCH
	if (port >= 0x80 && port < 0x88) /* POST status register */
		return;

	if ((port & 1) != 0) {
		FUNC0(port, val);
		FUNC0(port + 1, val >> 8);
	} else
#endif
	FUNC1(port, val);
}
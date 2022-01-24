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
struct vm {int dummy; } ;
struct vatpic {int* elc; } ;

/* Variables and functions */
 int IO_ELCR1 ; 
 int /*<<< orphan*/  FUNC0 (struct vatpic*) ; 
 int /*<<< orphan*/  FUNC1 (struct vatpic*) ; 
 struct vatpic* FUNC2 (struct vm*) ; 

int
FUNC3(struct vm *vm, int vcpuid, bool in, int port, int bytes,
    uint32_t *eax)
{
	struct vatpic *vatpic;
	bool is_master;

	vatpic = FUNC2(vm);
	is_master = (port == IO_ELCR1);

	if (bytes != 1)
		return (-1);

	FUNC0(vatpic);

	if (in) {
		if (is_master)
			*eax = vatpic->elc[0];
		else
			*eax = vatpic->elc[1];
	} else {
		/*
		 * For the master PIC the cascade channel (IRQ2), the
		 * heart beat timer (IRQ0), and the keyboard
		 * controller (IRQ1) cannot be programmed for level
		 * mode.
		 *
		 * For the slave PIC the real time clock (IRQ8) and
		 * the floating point error interrupt (IRQ13) cannot
		 * be programmed for level mode.
		 */
		if (is_master)
			vatpic->elc[0] = (*eax & 0xf8);
		else
			vatpic->elc[1] = (*eax & 0xde);
	}

	FUNC1(vatpic);

	return (0);
}
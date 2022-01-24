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
typedef  int /*<<< orphan*/  uintmax_t ;
struct ptrace_io_desc {unsigned long* piod_addr; int /*<<< orphan*/  piod_len; void* piod_offs; int /*<<< orphan*/  piod_op; } ;
struct proc_handle {scalar_t__ status; } ;
typedef  unsigned long instr_t ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  BREAKPOINT_INSTR_SZ ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,uintptr_t) ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  PIOD_WRITE_I ; 
 scalar_t__ PS_DEAD ; 
 scalar_t__ PS_IDLE ; 
 scalar_t__ PS_STOP ; 
 scalar_t__ PS_UNDEAD ; 
 int /*<<< orphan*/  PT_IO ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (struct proc_handle*) ; 
 int /*<<< orphan*/  FUNC3 (struct proc_handle*) ; 
 scalar_t__ FUNC4 (struct proc_handle*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC6(struct proc_handle *phdl, uintptr_t address,
    unsigned long saved)
{
	struct ptrace_io_desc piod;
	int ret = 0, stopped;
	instr_t instr;

	if (phdl->status == PS_DEAD || phdl->status == PS_UNDEAD ||
	    phdl->status == PS_IDLE) {
		errno = ENOENT;
		return (-1);
	}

	FUNC1("removing breakpoint at 0x%lx", address);

	stopped = 0;
	if (phdl->status != PS_STOP) {
		if (FUNC4(phdl) != 0)
			return (-1);
		stopped = 1;
	}

	/*
	 * Overwrite the breakpoint instruction that we setup previously.
	 */
	instr = saved;
	piod.piod_op = PIOD_WRITE_I;
	piod.piod_offs = (void *)address;
	piod.piod_addr = &instr;
	piod.piod_len  = BREAKPOINT_INSTR_SZ;
	if (FUNC5(PT_IO, FUNC3(phdl), (caddr_t)&piod, 0) < 0) {
		FUNC0("ERROR: couldn't write instruction at address 0x%jx",
		    (uintmax_t)address);
		ret = -1;
	}

	if (stopped)
		/* Restart the process if we had to stop it. */
		FUNC2(phdl);

	return (ret);
}
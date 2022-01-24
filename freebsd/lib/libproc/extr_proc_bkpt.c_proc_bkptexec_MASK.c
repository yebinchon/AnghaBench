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
struct proc_handle {int dummy; } ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  PT_STEP ; 
 int /*<<< orphan*/  REG_PC ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct proc_handle*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long*) ; 
 scalar_t__ FUNC5 (struct proc_handle*,unsigned long,unsigned long*) ; 
 int /*<<< orphan*/  FUNC6 (struct proc_handle*) ; 
 int FUNC7 (struct proc_handle*) ; 
 scalar_t__ FUNC8 (struct proc_handle*,int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC9 (struct proc_handle*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (struct proc_handle*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC12(struct proc_handle *phdl, unsigned long saved)
{
	unsigned long pc;
	unsigned long samesaved;
	int status;

	if (FUNC8(phdl, REG_PC, &pc) < 0) {
		FUNC0("ERROR: couldn't get PC register");
		return (-1);
	}
	FUNC4(&pc);
	if (FUNC3(phdl, pc, saved) < 0) {
		FUNC0("ERROR: couldn't delete breakpoint");
		return (-1);
	}
	/*
	 * Go back in time and step over the new instruction just
	 * set up by proc_bkptdel().
	 */
	FUNC9(phdl, REG_PC, pc);
	if (FUNC11(PT_STEP, FUNC6(phdl), (caddr_t)1, 0) < 0) {
		FUNC0("ERROR: ptrace step failed");
		return (-1);
	}
	FUNC10(phdl);
	status = FUNC7(phdl);
	if (!FUNC1(status)) {
		FUNC0("ERROR: don't know why process stopped");
		return (-1);
	}
	/*
	 * Restore the breakpoint. The saved instruction should be
	 * the same as the one that we were passed in.
	 */
	if (FUNC5(phdl, pc, &samesaved) < 0) {
		FUNC0("ERROR: couldn't restore breakpoint");
		return (-1);
	}
	FUNC2(samesaved == saved);

	return (0);
}
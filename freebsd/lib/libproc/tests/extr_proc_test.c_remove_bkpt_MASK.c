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
typedef  int /*<<< orphan*/  u_long ;
struct proc_handle {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  REG_PC ; 
 int FUNC1 (struct proc_handle*,uintptr_t,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct proc_handle*,int /*<<< orphan*/ ,uintptr_t) ; 

__attribute__((used)) static void
FUNC3(struct proc_handle *phdl, uintptr_t addr, u_long val)
{
	int error;

	error = FUNC1(phdl, addr, val);
	FUNC0(error, 0,
	    "failed to delete breakpoint at 0x%jx", (uintmax_t)addr);

	error = FUNC2(phdl, REG_PC, addr);
	FUNC0(error, 0, "failed to reset program counter");
}
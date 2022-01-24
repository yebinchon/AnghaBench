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
struct thread {int dummy; } ;
struct reg {int dummy; } ;
struct linux_pt_reg {int dummy; } ;
typedef  int /*<<< orphan*/  pid_t ;
typedef  int /*<<< orphan*/  l_reg ;

/* Variables and functions */
 int /*<<< orphan*/  PT_SETREGS ; 
 int FUNC0 (void*,struct linux_pt_reg*,int) ; 
 int FUNC1 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct reg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct reg*,struct linux_pt_reg*) ; 

__attribute__((used)) static int
FUNC3(struct thread *td, pid_t pid, void *data)
{
	struct reg b_reg;
	struct linux_pt_reg l_reg;
	int error;

	error = FUNC0(data, &l_reg, sizeof(l_reg));
	if (error != 0)
		return (error);
	FUNC2(&b_reg, &l_reg);
	error = FUNC1(td, PT_SETREGS, pid, &b_reg, 0);
	return (error);
}
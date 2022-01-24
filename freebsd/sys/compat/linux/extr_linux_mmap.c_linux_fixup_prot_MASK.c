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
struct thread {int /*<<< orphan*/  td_proc; } ;
struct linux_pemuldata {int persona; } ;

/* Variables and functions */
 int LINUX_READ_IMPLIES_EXEC ; 
 int PROT_EXEC ; 
 int PROT_READ ; 
 int /*<<< orphan*/  SV_ILP32 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct linux_pemuldata* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct thread *td, int *prot)
{
	struct linux_pemuldata *pem;

	if (FUNC0(td->td_proc, SV_ILP32) && *prot & PROT_READ) {
		pem = FUNC1(td->td_proc);
		if (pem->persona & LINUX_READ_IMPLIES_EXEC)
			*prot |= PROT_EXEC;
	}

}
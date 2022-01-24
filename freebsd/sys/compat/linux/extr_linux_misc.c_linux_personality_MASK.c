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
struct thread {int* td_retval; struct proc* td_proc; } ;
struct proc {int dummy; } ;
struct linux_personality_args {int per; } ;
struct linux_pemuldata {int persona; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct proc*) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 struct linux_pemuldata* FUNC2 (struct proc*) ; 

int
FUNC3(struct thread *td, struct linux_personality_args *args)
{
	struct linux_pemuldata *pem;
	struct proc *p = td->td_proc;
	uint32_t old;

	FUNC0(p);
	pem = FUNC2(p);
	old = pem->persona;
	if (args->per != 0xffffffff)
		pem->persona = args->per;
	FUNC1(p);

	td->td_retval[0] = old;
	return (0);
}
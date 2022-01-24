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
struct thread {int /*<<< orphan*/ * td_retval; } ;
struct linux_gettid_args {int dummy; } ;
struct linux_emuldata {int /*<<< orphan*/  em_tid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct linux_emuldata* FUNC1 (struct thread*) ; 

int
FUNC2(struct thread *td, struct linux_gettid_args *args)
{
	struct linux_emuldata *em;

	em = FUNC1(td);
	FUNC0(em != NULL, ("gettid: emuldata not found.\n"));

	td->td_retval[0] = em->em_tid;

	return (0);
}
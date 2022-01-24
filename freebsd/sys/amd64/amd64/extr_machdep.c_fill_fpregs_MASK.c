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
struct fpreg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct thread*) ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct fpreg*) ; 
 int /*<<< orphan*/  FUNC4 (struct thread*) ; 
 int /*<<< orphan*/  FUNC5 (struct thread*) ; 

int
FUNC6(struct thread *td, struct fpreg *fpregs)
{

	FUNC0(td == curthread || FUNC2(td) ||
	    FUNC1(td->td_proc),
	    ("not suspended thread %p", td));
	FUNC4(td);
	FUNC3(FUNC5(td), fpregs);
	return (0);
}
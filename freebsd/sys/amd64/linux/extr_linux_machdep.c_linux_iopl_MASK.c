#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct thread {TYPE_1__* td_frame; int /*<<< orphan*/  td_ucred; } ;
struct linux_iopl_args {int level; } ;
struct TYPE_2__ {int tf_rflags; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PRIV_IO ; 
 int PSL_IOPL ; 
 int /*<<< orphan*/  iopl ; 
 int FUNC1 (struct thread*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC3(struct thread *td, struct linux_iopl_args *args)
{
	int error;

	FUNC0(iopl);

	if (args->level > 3)
		return (EINVAL);
	if ((error = FUNC1(td, PRIV_IO)) != 0)
		return (error);
	if ((error = FUNC2(td->td_ucred, 0)) != 0)
		return (error);
	td->td_frame->tf_rflags = (td->td_frame->tf_rflags & ~PSL_IOPL) |
	    (args->level * (PSL_IOPL / 3));

	return (0);
}
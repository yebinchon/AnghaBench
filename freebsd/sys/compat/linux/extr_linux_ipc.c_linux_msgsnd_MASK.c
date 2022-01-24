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
struct thread {int dummy; } ;
struct linux_msgsnd_args {scalar_t__ msgsz; int /*<<< orphan*/  msgflg; int /*<<< orphan*/  msqid; int /*<<< orphan*/  msgp; } ;
typedef  int /*<<< orphan*/  lmtype ;
typedef  scalar_t__ l_long ;
struct TYPE_2__ {scalar_t__ msgmax; } ;

/* Variables and functions */
 int EINVAL ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (void const*,scalar_t__*,int) ; 
 int FUNC2 (struct thread*,int /*<<< orphan*/ ,char const*,scalar_t__,int /*<<< orphan*/ ,long) ; 
 TYPE_1__ msginfo ; 

int
FUNC3(struct thread *td, struct linux_msgsnd_args *args)
{
	const void *msgp;
	long mtype;
	l_long lmtype;
	int error;

	if ((l_long)args->msgsz < 0 || args->msgsz > (l_long)msginfo.msgmax)
		return (EINVAL);
	msgp = FUNC0(args->msgp);
	if ((error = FUNC1(msgp, &lmtype, sizeof(lmtype))) != 0)
		return (error);
	mtype = (long)lmtype;
	return (FUNC2(td, args->msqid,
	    (const char *)msgp + sizeof(lmtype),
	    args->msgsz, args->msgflg, mtype));
}
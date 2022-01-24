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
typedef  int /*<<< orphan*/  tmp ;
struct thread {int /*<<< orphan*/ * td_retval; } ;
struct linux_shmget_args {int /*<<< orphan*/  shmflg; int /*<<< orphan*/  size; int /*<<< orphan*/  key; } ;
struct linux_shmdt_args {void* shmaddr; } ;
struct linux_shmctl_args {void* buf; int /*<<< orphan*/  cmd; int /*<<< orphan*/  shmid; } ;
struct linux_shmat_args {int /*<<< orphan*/  shmflg; void* shmaddr; int /*<<< orphan*/  shmid; } ;
struct linux_semop_args {int /*<<< orphan*/  nsops; void* tsops; int /*<<< orphan*/  semid; } ;
struct linux_semget_args {int /*<<< orphan*/  semflg; int /*<<< orphan*/  nsems; int /*<<< orphan*/  key; } ;
struct l_ipc_kludge {int /*<<< orphan*/  msgtyp; int /*<<< orphan*/  msgp; } ;
struct linux_semctl_args {struct l_ipc_kludge arg; int /*<<< orphan*/  cmd; int /*<<< orphan*/  semnum; int /*<<< orphan*/  semid; } ;
struct linux_msgsnd_args {int /*<<< orphan*/  msgflg; int /*<<< orphan*/  msgsz; void* msgp; int /*<<< orphan*/  msqid; } ;
struct linux_msgrcv_args {int /*<<< orphan*/  msgtyp; void* msgp; int /*<<< orphan*/  msgflg; int /*<<< orphan*/  msgsz; int /*<<< orphan*/  msqid; } ;
struct linux_msgget_args {int /*<<< orphan*/  msgflg; int /*<<< orphan*/  key; } ;
struct linux_msgctl_args {void* buf; int /*<<< orphan*/  cmd; int /*<<< orphan*/  msqid; } ;
struct linux_ipc_args {int what; int /*<<< orphan*/  ptr; int /*<<< orphan*/  arg2; int /*<<< orphan*/  arg1; int /*<<< orphan*/  arg3; int /*<<< orphan*/  arg5; } ;
typedef  int /*<<< orphan*/  l_uintptr_t ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 int EINVAL ; 
#define  LINUX_MSGCTL 138 
#define  LINUX_MSGGET 137 
#define  LINUX_MSGRCV 136 
#define  LINUX_MSGSND 135 
#define  LINUX_SEMCTL 134 
#define  LINUX_SEMGET 133 
#define  LINUX_SEMOP 132 
#define  LINUX_SHMAT 131 
#define  LINUX_SHMCTL 130 
#define  LINUX_SHMDT 129 
#define  LINUX_SHMGET 128 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (void*,struct l_ipc_kludge*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,void*,int) ; 
 int FUNC3 (struct thread*,struct linux_msgctl_args*) ; 
 int FUNC4 (struct thread*,struct linux_msgget_args*) ; 
 int FUNC5 (struct thread*,struct linux_msgrcv_args*) ; 
 int FUNC6 (struct thread*,struct linux_msgsnd_args*) ; 
 int FUNC7 (struct thread*,struct linux_semctl_args*) ; 
 int FUNC8 (struct thread*,struct linux_semget_args*) ; 
 int FUNC9 (struct thread*,struct linux_semop_args*) ; 
 int FUNC10 (struct thread*,struct linux_shmat_args*) ; 
 int FUNC11 (struct thread*,struct linux_shmctl_args*) ; 
 int FUNC12 (struct thread*,struct linux_shmdt_args*) ; 
 int FUNC13 (struct thread*,struct linux_shmget_args*) ; 

int
FUNC14(struct thread *td, struct linux_ipc_args *args)
{

	switch (args->what & 0xFFFF) {
	case LINUX_SEMOP: {
		struct linux_semop_args a;

		a.semid = args->arg1;
		a.tsops = FUNC0(args->ptr);
		a.nsops = args->arg2;
		return (FUNC9(td, &a));
	}
	case LINUX_SEMGET: {
		struct linux_semget_args a;

		a.key = args->arg1;
		a.nsems = args->arg2;
		a.semflg = args->arg3;
		return (FUNC8(td, &a));
	}
	case LINUX_SEMCTL: {
		struct linux_semctl_args a;
		int error;

		a.semid = args->arg1;
		a.semnum = args->arg2;
		a.cmd = args->arg3;
		error = FUNC1(FUNC0(args->ptr), &a.arg, sizeof(a.arg));
		if (error)
			return (error);
		return (FUNC7(td, &a));
	}
	case LINUX_MSGSND: {
		struct linux_msgsnd_args a;

		a.msqid = args->arg1;
		a.msgp = FUNC0(args->ptr);
		a.msgsz = args->arg2;
		a.msgflg = args->arg3;
		return (FUNC6(td, &a));
	}
	case LINUX_MSGRCV: {
		struct linux_msgrcv_args a;

		a.msqid = args->arg1;
		a.msgsz = args->arg2;
		a.msgflg = args->arg3;
		if ((args->what >> 16) == 0) {
			struct l_ipc_kludge tmp;
			int error;

			if (args->ptr == 0)
				return (EINVAL);
			error = FUNC1(FUNC0(args->ptr), &tmp, sizeof(tmp));
			if (error)
				return (error);
			a.msgp = FUNC0(tmp.msgp);
			a.msgtyp = tmp.msgtyp;
		} else {
			a.msgp = FUNC0(args->ptr);
			a.msgtyp = args->arg5;
		}
		return (FUNC5(td, &a));
	}
	case LINUX_MSGGET: {
		struct linux_msgget_args a;

		a.key = args->arg1;
		a.msgflg = args->arg2;
		return (FUNC4(td, &a));
	}
	case LINUX_MSGCTL: {
		struct linux_msgctl_args a;

		a.msqid = args->arg1;
		a.cmd = args->arg2;
		a.buf = FUNC0(args->ptr);
		return (FUNC3(td, &a));
	}
	case LINUX_SHMAT: {
		struct linux_shmat_args a;
		l_uintptr_t addr;
		int error;

		a.shmid = args->arg1;
		a.shmaddr = FUNC0(args->ptr);
		a.shmflg = args->arg2;
		error = FUNC10(td, &a);
		if (error != 0)
			return (error);
		addr = td->td_retval[0];
		error = FUNC2(&addr, FUNC0(args->arg3), sizeof(addr));
		td->td_retval[0] = 0;
		return (error);
	}
	case LINUX_SHMDT: {
		struct linux_shmdt_args a;

		a.shmaddr = FUNC0(args->ptr);
		return (FUNC12(td, &a));
	}
	case LINUX_SHMGET: {
		struct linux_shmget_args a;

		a.key = args->arg1;
		a.size = args->arg2;
		a.shmflg = args->arg3;
		return (FUNC13(td, &a));
	}
	case LINUX_SHMCTL: {
		struct linux_shmctl_args a;

		a.shmid = args->arg1;
		a.cmd = args->arg2;
		a.buf = FUNC0(args->ptr);
		return (FUNC11(td, &a));
	}
	default:
		break;
	}

	return (EINVAL);
}
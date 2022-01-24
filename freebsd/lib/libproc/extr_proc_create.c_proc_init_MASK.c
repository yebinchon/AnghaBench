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
struct TYPE_2__ {int /*<<< orphan*/  pid; } ;
struct proc_handle {int flags; int status; int /*<<< orphan*/  model; int /*<<< orphan*/  execpath; int /*<<< orphan*/ * procstat; TYPE_1__ public; } ;
struct kinfo_proc {int dummy; } ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int EINVAL ; 
#define  ELFCLASS32 130 
#define  ELFCLASS64 129 
#define  ELFCLASSNONE 128 
 int ENOMEM ; 
 int /*<<< orphan*/  KERN_PROC_PID ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  PR_MODEL_ILP32 ; 
 int /*<<< orphan*/  PR_MODEL_LP64 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 int FUNC1 (int) ; 
 struct proc_handle* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct proc_handle*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct kinfo_proc*) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct kinfo_proc*,int /*<<< orphan*/ ,int) ; 
 struct kinfo_proc* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/ * FUNC8 () ; 

__attribute__((used)) static int
FUNC9(pid_t pid, int flags, int status, struct proc_handle **pphdl)
{
	struct kinfo_proc *kp;
	struct proc_handle *phdl;
	int error, class, count, fd;

	error = ENOMEM;
	if ((phdl = FUNC2(sizeof(*phdl))) == NULL)
		goto out;

	FUNC3(phdl, 0, sizeof(*phdl));
	phdl->public.pid = pid;
	phdl->flags = flags;
	phdl->status = status;
	phdl->procstat = FUNC8();
	if (phdl->procstat == NULL)
		goto out;

	/* Obtain a path to the executable. */
	if ((kp = FUNC7(phdl->procstat, KERN_PROC_PID, pid,
	    &count)) == NULL)
		goto out;
	error = FUNC6(phdl->procstat, kp, phdl->execpath,
	    sizeof(phdl->execpath));
	FUNC5(phdl->procstat, kp);
	if (error != 0)
		goto out;

	/* Use it to determine the data model for the process. */
	if ((fd = FUNC4(phdl->execpath, O_RDONLY)) < 0) {
		error = errno;
		goto out;
	}
	class = FUNC1(fd);
	switch (class) {
	case ELFCLASS64:
		phdl->model = PR_MODEL_LP64;
		break;
	case ELFCLASS32:
		phdl->model = PR_MODEL_ILP32;
		break;
	case ELFCLASSNONE:
	default:
		error = EINVAL;
		break;
	}
	(void)FUNC0(fd);

out:
	*pphdl = phdl;
	return (error);
}
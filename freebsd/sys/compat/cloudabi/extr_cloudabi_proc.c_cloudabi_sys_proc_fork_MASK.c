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
struct thread {int* td_retval; } ;
struct fork_req {int fr_flags; int* fr_pd_fd; struct filecaps* fr_pd_fcaps; } ;
struct filecaps {int /*<<< orphan*/  fc_rights; } ;
struct cloudabi_sys_proc_fork_args {int dummy; } ;
typedef  int /*<<< orphan*/  fr ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_EVENT ; 
 int /*<<< orphan*/  CAP_FSTAT ; 
 int RFFDG ; 
 int RFPROC ; 
 int RFPROCDESC ; 
 int /*<<< orphan*/  FUNC0 (struct fork_req*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct thread*,struct fork_req*) ; 

int
FUNC3(struct thread *td,
    struct cloudabi_sys_proc_fork_args *uap)
{
	struct fork_req fr;
	struct filecaps fcaps = {};
	int error, fd;

	FUNC1(&fcaps.fc_rights, CAP_FSTAT, CAP_EVENT);
	FUNC0(&fr, sizeof(fr));
	fr.fr_flags = RFFDG | RFPROC | RFPROCDESC;
	fr.fr_pd_fd = &fd;
	fr.fr_pd_fcaps = &fcaps;
	error = FUNC2(td, &fr);
	if (error != 0)
		return (error);
	/* Return the file descriptor to the parent process. */
	td->td_retval[0] = fd;
	return (0);
}
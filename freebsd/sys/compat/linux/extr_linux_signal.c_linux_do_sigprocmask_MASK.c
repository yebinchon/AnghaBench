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
struct thread {scalar_t__* td_retval; } ;
typedef  int /*<<< orphan*/  sigset_t ;
typedef  int /*<<< orphan*/  l_sigset_t ;

/* Variables and functions */
 int EINVAL ; 
#define  LINUX_SIG_BLOCK 130 
#define  LINUX_SIG_SETMASK 129 
#define  LINUX_SIG_UNBLOCK 128 
 int SIG_BLOCK ; 
 int SIG_SETMASK ; 
 int SIG_UNBLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct thread*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct thread *td, int how, l_sigset_t *new,
		     l_sigset_t *old)
{
	sigset_t omask, nmask;
	sigset_t *nmaskp;
	int error;

	td->td_retval[0] = 0;

	switch (how) {
	case LINUX_SIG_BLOCK:
		how = SIG_BLOCK;
		break;
	case LINUX_SIG_UNBLOCK:
		how = SIG_UNBLOCK;
		break;
	case LINUX_SIG_SETMASK:
		how = SIG_SETMASK;
		break;
	default:
		return (EINVAL);
	}
	if (new != NULL) {
		FUNC2(new, &nmask);
		nmaskp = &nmask;
	} else
		nmaskp = NULL;
	error = FUNC1(td, how, nmaskp, &omask, 0);
	if (error == 0 && old != NULL)
		FUNC0(&omask, old);

	return (error);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sigevent {void* sigev_signo; int /*<<< orphan*/  sigev_notify; } ;
struct l_sigevent {int sigev_notify; int /*<<< orphan*/  sigev_signo; } ;
struct TYPE_4__ {int /*<<< orphan*/  _tid; } ;
struct TYPE_3__ {int /*<<< orphan*/  sival_ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct l_sigevent,struct sigevent,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct l_sigevent,struct sigevent,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOSYS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
#define  L_SIGEV_NONE 131 
#define  L_SIGEV_SIGNAL 130 
#define  L_SIGEV_THREAD 129 
#define  L_SIGEV_THREAD_ID 128 
 int /*<<< orphan*/  FUNC3 (struct l_sigevent,struct sigevent,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIGEV_NONE ; 
 int /*<<< orphan*/  SIGEV_SIGNAL ; 
 int /*<<< orphan*/  SIGEV_THREAD ; 
 int /*<<< orphan*/  SIGEV_THREAD_ID ; 
 TYPE_2__ _l_sigev_un ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sigev_notify ; 
 int /*<<< orphan*/  sigev_notify_thread_id ; 
 TYPE_1__ sigev_value ; 

__attribute__((used)) static int
FUNC5(struct l_sigevent *l_sig, struct sigevent *sig)
{

	FUNC0(*l_sig, *sig, sigev_notify);
	switch (l_sig->sigev_notify) {
	case L_SIGEV_SIGNAL:
		if (!FUNC2(l_sig->sigev_signo))
			return (EINVAL);
		sig->sigev_notify = SIGEV_SIGNAL;
		sig->sigev_signo = FUNC4(l_sig->sigev_signo);
		FUNC3(*l_sig, *sig, sigev_value.sival_ptr);
		break;
	case L_SIGEV_NONE:
		sig->sigev_notify = SIGEV_NONE;
		break;
	case L_SIGEV_THREAD:
#if 0
		/* Seems to not be used anywhere (anymore)? */
		sig->sigev_notify = SIGEV_THREAD;
		return (ENOSYS);
#else
		return (EINVAL);
#endif
	case L_SIGEV_THREAD_ID:
		if (!FUNC2(l_sig->sigev_signo))
			return (EINVAL);
		sig->sigev_notify = SIGEV_THREAD_ID;
		FUNC1(*l_sig, *sig, _l_sigev_un._tid, sigev_notify_thread_id);
		sig->sigev_signo = FUNC4(l_sig->sigev_signo);
		FUNC3(*l_sig, *sig, sigev_value.sival_ptr);
		break;
	default:
		return (EINVAL);
	}
	return (0);
}
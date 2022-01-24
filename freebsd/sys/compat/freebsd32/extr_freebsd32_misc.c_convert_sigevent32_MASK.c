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
struct sigevent32 {int dummy; } ;
struct sigevent {int sigev_notify; } ;
struct TYPE_2__ {int /*<<< orphan*/  sival_ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sigevent32,struct sigevent,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct sigevent32,struct sigevent,int /*<<< orphan*/ ) ; 
#define  SIGEV_KEVENT 131 
#define  SIGEV_NONE 130 
#define  SIGEV_SIGNAL 129 
#define  SIGEV_THREAD_ID 128 
 int /*<<< orphan*/  sigev_notify ; 
 int /*<<< orphan*/  sigev_notify_kevent_flags ; 
 int /*<<< orphan*/  sigev_notify_kqueue ; 
 int /*<<< orphan*/  sigev_notify_thread_id ; 
 int /*<<< orphan*/  sigev_signo ; 
 TYPE_1__ sigev_value ; 

int
FUNC2(struct sigevent32 *sig32, struct sigevent *sig)
{

	FUNC0(*sig32, *sig, sigev_notify);
	switch (sig->sigev_notify) {
	case SIGEV_NONE:
		break;
	case SIGEV_THREAD_ID:
		FUNC0(*sig32, *sig, sigev_notify_thread_id);
		/* FALLTHROUGH */
	case SIGEV_SIGNAL:
		FUNC0(*sig32, *sig, sigev_signo);
		FUNC1(*sig32, *sig, sigev_value.sival_ptr);
		break;
	case SIGEV_KEVENT:
		FUNC0(*sig32, *sig, sigev_notify_kqueue);
		FUNC0(*sig32, *sig, sigev_notify_kevent_flags);
		FUNC1(*sig32, *sig, sigev_value.sival_ptr);
		break;
	default:
		return (EINVAL);
	}
	return (0);
}
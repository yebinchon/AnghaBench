#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct kevent {int filter; int flags; int /*<<< orphan*/  data; scalar_t__ udata; } ;
struct cloudabi64_kevent_args {int /*<<< orphan*/  out; } ;
typedef  int /*<<< orphan*/  ev ;
struct TYPE_7__ {int /*<<< orphan*/  exitcode; int /*<<< orphan*/  signal; } ;
struct TYPE_6__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  nbytes; } ;
struct TYPE_8__ {uintptr_t userdata; int /*<<< orphan*/  error; TYPE_2__ proc_terminate; TYPE_1__ fd_readwrite; int /*<<< orphan*/  type; } ;
typedef  TYPE_3__ cloudabi_event_t ;

/* Variables and functions */
 int /*<<< orphan*/  CLOUDABI_EVENTTYPE_CLOCK ; 
 int /*<<< orphan*/  CLOUDABI_EVENTTYPE_FD_READ ; 
 int /*<<< orphan*/  CLOUDABI_EVENTTYPE_FD_WRITE ; 
 int /*<<< orphan*/  CLOUDABI_EVENTTYPE_PROC_TERMINATE ; 
 int /*<<< orphan*/  CLOUDABI_EVENT_FD_READWRITE_HANGUP ; 
#define  EVFILT_PROCDESC 131 
#define  EVFILT_READ 130 
#define  EVFILT_TIMER 129 
#define  EVFILT_WRITE 128 
 int EV_EOF ; 
 int EV_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC7(void *arg, struct kevent *kevp, int count)
{
	cloudabi_event_t ev;
	struct cloudabi64_kevent_args *args;
	int error;

	args = arg;
	while (count-- > 0) {
		/* Convert fields that should always be present. */
		FUNC6(&ev, 0, sizeof(ev));
		ev.userdata = (uintptr_t)kevp->udata;
		switch (kevp->filter) {
		case EVFILT_TIMER:
			ev.type = CLOUDABI_EVENTTYPE_CLOCK;
			break;
		case EVFILT_READ:
			ev.type = CLOUDABI_EVENTTYPE_FD_READ;
			break;
		case EVFILT_WRITE:
			ev.type = CLOUDABI_EVENTTYPE_FD_WRITE;
			break;
		case EVFILT_PROCDESC:
			ev.type = CLOUDABI_EVENTTYPE_PROC_TERMINATE;
			break;
		}

		if ((kevp->flags & EV_ERROR) == 0) {
			/* Success. */
			switch (kevp->filter) {
			case EVFILT_READ:
			case EVFILT_WRITE:
				ev.fd_readwrite.nbytes = kevp->data;
				if ((kevp->flags & EV_EOF) != 0) {
					ev.fd_readwrite.flags |=
					    CLOUDABI_EVENT_FD_READWRITE_HANGUP;
				}
				break;
			case EVFILT_PROCDESC:
				if (FUNC1(kevp->data)) {
					/* Process got signalled. */
					ev.proc_terminate.signal =
					   FUNC4(FUNC2(kevp->data));
					ev.proc_terminate.exitcode = 0;
				} else {
					/* Process exited. */
					ev.proc_terminate.signal = 0;
					ev.proc_terminate.exitcode =
					    FUNC0(kevp->data);
				}
				break;
			}
		} else {
			/* Error. */
			ev.error = FUNC3(kevp->data);
		}
		++kevp;

		/* TODO(ed): Copy out multiple entries at once. */
		error = FUNC5(&ev, args->out++, sizeof(ev));
		if (error != 0)
			return (error);
	}
	return (0);
}
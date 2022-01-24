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
union ccb {int /*<<< orphan*/  cin1; int /*<<< orphan*/  atio; } ;
struct timespec {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct kevent {int flags; int filter; scalar_t__ udata; } ;
struct ctio_descr {int /*<<< orphan*/  atio; int /*<<< orphan*/  event; } ;
struct TYPE_3__ {scalar_t__ targ_descr; } ;
struct ccb_scsiio {TYPE_1__ ccb_h; } ;
struct ccb_hdr {int func_code; int status; } ;
struct TYPE_4__ {int /*<<< orphan*/  tqe; } ;

/* Variables and functions */
 int /*<<< orphan*/  AIO_DONE ; 
 int CAM_DEV_QFRZN ; 
 scalar_t__ EINTR ; 
#define  EVFILT_AIO 132 
#define  EVFILT_READ 131 
#define  EVFILT_SIGNAL 130 
 int EV_ADD ; 
 int EV_ENABLE ; 
 int EV_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct kevent*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MAX_EVENTS ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct ccb_hdr* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct ccb_hdr*,int /*<<< orphan*/ ) ; 
#define  XPT_ACCEPT_TARGET_IO 129 
#define  XPT_IMMEDIATE_NOTIFY 128 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (int /*<<< orphan*/ ,struct kevent*,int,struct kevent*,int,struct timespec*) ; 
 int /*<<< orphan*/  kq_fd ; 
 int /*<<< orphan*/  FUNC9 () ; 
 TYPE_2__ periph_links ; 
 int /*<<< orphan*/  FUNC10 (struct ccb_scsiio*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  targ_fd ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  work_queue ; 

__attribute__((used)) static void
FUNC16()
{
	struct kevent events[MAX_EVENTS];
	struct timespec ts, *tptr;
	int quit;

	/* Register kqueue for event notification */
	if ((kq_fd = FUNC9()) < 0)
		FUNC5(1, "init kqueue");

	/* Set up some default events */
	FUNC0(&events[0], SIGHUP, EVFILT_SIGNAL, EV_ADD|EV_ENABLE, 0, 0, 0);
	FUNC0(&events[1], SIGINT, EVFILT_SIGNAL, EV_ADD|EV_ENABLE, 0, 0, 0);
	FUNC0(&events[2], SIGTERM, EVFILT_SIGNAL, EV_ADD|EV_ENABLE, 0, 0, 0);
	FUNC0(&events[3], targ_fd, EVFILT_READ, EV_ADD|EV_ENABLE, 0, 0, 0);
	if (FUNC8(kq_fd, events, 4, NULL, 0, NULL) < 0)
		FUNC5(1, "kevent signal registration");

	ts.tv_sec = 0;
	ts.tv_nsec = 0;
	tptr = NULL;
	quit = 0;

	/* Loop until user signal */
	while (quit == 0) {
		int retval, i, oo;
		struct ccb_hdr *ccb_h;

		/* Check for the next signal, read ready, or AIO completion */
		retval = FUNC8(kq_fd, NULL, 0, events, MAX_EVENTS, tptr);
		if (retval < 0) {
			if (errno == EINTR) {
				if (debug)
					FUNC13("EINTR, looping");
				continue;
            		}
			else {
				FUNC5(1, "kevent failed");
			}
		} else if (retval > MAX_EVENTS) {
			FUNC6(1, "kevent returned more events than allocated?");
		}

		/* Process all received events. */
		for (oo = i = 0; i < retval; i++) {
			if ((events[i].flags & EV_ERROR) != 0)
				FUNC6(1, "kevent registration failed");

			switch (events[i].filter) {
			case EVFILT_READ:
				if (debug)
					FUNC13("read ready");
				FUNC7();
				break;
			case EVFILT_AIO:
			{
				struct ccb_scsiio *ctio;
				struct ctio_descr *c_descr;
				if (debug)
					FUNC13("aio ready");

				ctio = (struct ccb_scsiio *)events[i].udata;
				c_descr = (struct ctio_descr *)
					  ctio->ccb_h.targ_descr;
				c_descr->event = AIO_DONE;
				/* Queue on the appropriate ATIO */
				FUNC10(ctio);
				/* Process any queued completions. */
				oo += FUNC12(c_descr->atio);
				break;
			}
			case EVFILT_SIGNAL:
				if (debug)
					FUNC13("signal ready, setting quit");
				quit = 1;
				break;
			default:
				FUNC13("unknown event %d", events[i].filter);
				break;
			}

			if (debug)
				FUNC13("event %d done", events[i].filter);
		}

		if (oo) {
			tptr = &ts;
			continue;
		}

		/* Grab the first CCB and perform one work unit. */
		if ((ccb_h = FUNC2(&work_queue)) != NULL) {
			union ccb *ccb;

			ccb = (union ccb *)ccb_h;
			switch (ccb_h->func_code) {
			case XPT_ACCEPT_TARGET_IO:
				/* Start one more transfer. */
				retval = FUNC14(&ccb->atio);
				break;
			case XPT_IMMEDIATE_NOTIFY:
				retval = FUNC15(&ccb->cin1);
				break;
			default:
				FUNC13("Unhandled ccb type %#x on workq",
				      ccb_h->func_code);
				FUNC4();
				/* NOTREACHED */
			}

			/* Assume work function handled the exception */
			if ((ccb_h->status & CAM_DEV_QFRZN) != 0) {
				if (debug) {
					FUNC13("Queue frozen receiving CCB, "
					      "releasing");
				}
				FUNC11();
			}

			/* No more work needed for this command. */
			if (retval == 0) {
				FUNC3(&work_queue, ccb_h,
					     periph_links.tqe);
			}
		}

		/*
		 * Poll for new events (i.e. completions) while we
		 * are processing CCBs on the work_queue. Once it's
		 * empty, use an infinite wait.
		 */
		if (!FUNC1(&work_queue))
			tptr = &ts;
		else
			tptr = NULL;
	}
}
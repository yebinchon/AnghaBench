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
struct TYPE_2__ {scalar_t__ low; } ;
struct bufferevent {int /*<<< orphan*/  cbarg; int /*<<< orphan*/  (* errorcb ) (struct bufferevent*,short,int /*<<< orphan*/ ) ;int /*<<< orphan*/  timeout_write; int /*<<< orphan*/  ev_write; int /*<<< orphan*/  output; int /*<<< orphan*/  (* writecb ) (struct bufferevent*,int /*<<< orphan*/ ) ;TYPE_1__ wm_write; } ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 scalar_t__ EINPROGRESS ; 
 scalar_t__ EINTR ; 
 short EVBUFFER_EOF ; 
 short EVBUFFER_ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 short EVBUFFER_TIMEOUT ; 
 short EVBUFFER_WRITE ; 
 short EV_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bufferevent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bufferevent*,short,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(int fd, short event, void *arg)
{
	struct bufferevent *bufev = arg;
	int res = 0;
	short what = EVBUFFER_WRITE;

	if (event == EV_TIMEOUT) {
		what |= EVBUFFER_TIMEOUT;
		goto error;
	}

	if (FUNC0(bufev->output)) {
	    res = FUNC2(bufev->output, fd);
	    if (res == -1) {
#ifndef WIN32
/*todo. evbuffer uses WriteFile when WIN32 is set. WIN32 system calls do not
 *set errno. thus this error checking is not portable*/
		    if (errno == EAGAIN ||
			errno == EINTR ||
			errno == EINPROGRESS)
			    goto reschedule;
		    /* error case */
		    what |= EVBUFFER_ERROR;

#else
				goto reschedule;
#endif

	    } else if (res == 0) {
		    /* eof case */
		    what |= EVBUFFER_EOF;
	    }
	    if (res <= 0)
		    goto error;
	}

	if (FUNC0(bufev->output) != 0)
		FUNC1(&bufev->ev_write, bufev->timeout_write);

	/*
	 * Invoke the user callback if our buffer is drained or below the
	 * low watermark.
	 */
	if (bufev->writecb != NULL &&
	    FUNC0(bufev->output) <= bufev->wm_write.low)
		(*bufev->writecb)(bufev, bufev->cbarg);

	return;

 reschedule:
	if (FUNC0(bufev->output) != 0)
		FUNC1(&bufev->ev_write, bufev->timeout_write);
	return;

 error:
	(*bufev->errorcb)(bufev, what, bufev->cbarg);
}
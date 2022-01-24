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
struct evbuffer {int dummy; } ;
struct TYPE_2__ {int high; size_t low; } ;
struct bufferevent {int /*<<< orphan*/  cbarg; int /*<<< orphan*/  (* errorcb ) (struct bufferevent*,short,int /*<<< orphan*/ ) ;int /*<<< orphan*/  timeout_read; int /*<<< orphan*/  ev_read; int /*<<< orphan*/  (* readcb ) (struct bufferevent*,int /*<<< orphan*/ ) ;struct evbuffer* input; TYPE_1__ wm_read; } ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 scalar_t__ EINTR ; 
 short EVBUFFER_EOF ; 
 short EVBUFFER_ERROR ; 
 size_t FUNC0 (struct evbuffer*) ; 
 short EVBUFFER_READ ; 
 short EVBUFFER_TIMEOUT ; 
 short EV_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bufferevent_read_pressure_cb ; 
 scalar_t__ errno ; 
 int FUNC2 (struct evbuffer*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct evbuffer*,int /*<<< orphan*/ ,struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct bufferevent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bufferevent*,short,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(int fd, short event, void *arg)
{
	struct bufferevent *bufev = arg;
	int res = 0;
	short what = EVBUFFER_READ;
	size_t len;
	int howmuch = -1;

	if (event == EV_TIMEOUT) {
		what |= EVBUFFER_TIMEOUT;
		goto error;
	}

	/*
	 * If we have a high watermark configured then we don't want to
	 * read more data than would make us reach the watermark.
	 */
	if (bufev->wm_read.high != 0)
		howmuch = bufev->wm_read.high;

	res = FUNC2(bufev->input, fd, howmuch);
	if (res == -1) {
		if (errno == EAGAIN || errno == EINTR)
			goto reschedule;
		/* error case */
		what |= EVBUFFER_ERROR;
	} else if (res == 0) {
		/* eof case */
		what |= EVBUFFER_EOF;
	}

	if (res <= 0)
		goto error;

	FUNC1(&bufev->ev_read, bufev->timeout_read);

	/* See if this callbacks meets the water marks */
	len = FUNC0(bufev->input);
	if (bufev->wm_read.low != 0 && len < bufev->wm_read.low)
		return;
	if (bufev->wm_read.high != 0 && len > bufev->wm_read.high) {
		struct evbuffer *buf = bufev->input;
		FUNC4(&bufev->ev_read);

		/* Now schedule a callback for us */
		FUNC3(buf, bufferevent_read_pressure_cb, bufev);
		return;
	}

	/* Invoke the user callback - must always be called last */
	if (bufev->readcb != NULL)
		(*bufev->readcb)(bufev, bufev->cbarg);
	return;

 reschedule:
	FUNC1(&bufev->ev_read, bufev->timeout_read);
	return;

 error:
	(*bufev->errorcb)(bufev, what, bufev->cbarg);
}
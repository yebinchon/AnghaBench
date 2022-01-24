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
struct event_base {int dummy; } ;
struct bufferevent {int /*<<< orphan*/ * output; int /*<<< orphan*/ * input; int /*<<< orphan*/  enabled; struct bufferevent_ops const* be_ops; int /*<<< orphan*/  timeout_write; int /*<<< orphan*/  timeout_read; struct event_base* ev_base; } ;
struct bufferevent_private {int refcnt; int options; int /*<<< orphan*/  deferred; struct bufferevent bev; } ;
struct bufferevent_ops {int dummy; } ;
typedef  enum bufferevent_options { ____Placeholder_bufferevent_options } bufferevent_options ;

/* Variables and functions */
 int BEV_OPT_DEFER_CALLBACKS ; 
 int BEV_OPT_THREADSAFE ; 
 int BEV_OPT_UNLOCK_CALLBACKS ; 
 int /*<<< orphan*/  EV_WRITE ; 
 scalar_t__ FUNC0 (struct bufferevent*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent_private*) ; 
 int /*<<< orphan*/  bufferevent_run_deferred_callbacks_locked ; 
 int /*<<< orphan*/  bufferevent_run_deferred_callbacks_unlocked ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct bufferevent*) ; 
 int FUNC5 (struct event_base*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct bufferevent_private*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int
FUNC9(struct bufferevent_private *bufev_private,
    struct event_base *base,
    const struct bufferevent_ops *ops,
    enum bufferevent_options options)
{
	struct bufferevent *bufev = &bufev_private->bev;

	if (!bufev->input) {
		if ((bufev->input = FUNC3()) == NULL)
			return -1;
	}

	if (!bufev->output) {
		if ((bufev->output = FUNC3()) == NULL) {
			FUNC2(bufev->input);
			return -1;
		}
	}

	bufev_private->refcnt = 1;
	bufev->ev_base = base;

	/* Disable timeouts. */
	FUNC8(&bufev->timeout_read);
	FUNC8(&bufev->timeout_write);

	bufev->be_ops = ops;

	FUNC1(bufev_private);

	/*
	 * Set to EV_WRITE so that using bufferevent_write is going to
	 * trigger a callback.  Reading needs to be explicitly enabled
	 * because otherwise no data will be available.
	 */
	bufev->enabled = EV_WRITE;

#ifndef EVENT__DISABLE_THREAD_SUPPORT
	if (options & BEV_OPT_THREADSAFE) {
		if (FUNC0(bufev, NULL) < 0) {
			/* cleanup */
			FUNC2(bufev->input);
			FUNC2(bufev->output);
			bufev->input = NULL;
			bufev->output = NULL;
			return -1;
		}
	}
#endif
	if ((options & (BEV_OPT_DEFER_CALLBACKS|BEV_OPT_UNLOCK_CALLBACKS))
	    == BEV_OPT_UNLOCK_CALLBACKS) {
		FUNC7("UNLOCK_CALLBACKS requires DEFER_CALLBACKS");
		return -1;
	}
	if (options & BEV_OPT_UNLOCK_CALLBACKS)
		FUNC6(
		    &bufev_private->deferred,
		    FUNC5(base) / 2,
		    bufferevent_run_deferred_callbacks_unlocked,
		    bufev_private);
	else
		FUNC6(
		    &bufev_private->deferred,
		    FUNC5(base) / 2,
		    bufferevent_run_deferred_callbacks_locked,
		    bufev_private);

	bufev_private->options = options;

	FUNC4(bufev->input, bufev);
	FUNC4(bufev->output, bufev);

	return 0;
}
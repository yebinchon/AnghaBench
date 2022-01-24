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
struct bufferevent_filtered {void (* free_context ) (void*) ;int /*<<< orphan*/  outbuf_cb; struct bufferevent* underlying; void* context; void* process_out; void* process_in; int /*<<< orphan*/  bev; } ;
struct bufferevent {int /*<<< orphan*/  output; int /*<<< orphan*/  ev_base; } ;
typedef  void* bufferevent_filter_cb ;

/* Variables and functions */
 int BEV_OPT_THREADSAFE ; 
 int /*<<< orphan*/  BEV_SUSPEND_FILT_READ ; 
 int EV_READ ; 
 int EV_WRITE ; 
 int /*<<< orphan*/  be_filter_eventcb ; 
 int /*<<< orphan*/  be_filter_readcb ; 
 int /*<<< orphan*/  be_filter_writecb ; 
 void* be_null_filter ; 
 int /*<<< orphan*/  FUNC0 (struct bufferevent*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bufferevent_filtered_outbuf_cb ; 
 int /*<<< orphan*/  FUNC2 (struct bufferevent*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bufferevent*) ; 
 int /*<<< orphan*/  bufferevent_ops_filter ; 
 int /*<<< orphan*/  FUNC5 (struct bufferevent*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bufferevent_filtered*) ; 
 int /*<<< orphan*/  FUNC6 (struct bufferevent*,int /*<<< orphan*/ ) ; 
 struct bufferevent* FUNC7 (struct bufferevent_filtered*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bufferevent_filtered*) ; 
 struct bufferevent_filtered* FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct bufferevent_filtered*) ; 

struct bufferevent *
FUNC11(struct bufferevent *underlying,
		       bufferevent_filter_cb input_filter,
		       bufferevent_filter_cb output_filter,
		       int options,
		       void (*free_context)(void *),
		       void *ctx)
{
	struct bufferevent_filtered *bufev_f;
	int tmp_options = options & ~BEV_OPT_THREADSAFE;

	if (!underlying)
		return NULL;

	if (!input_filter)
		input_filter = be_null_filter;
	if (!output_filter)
		output_filter = be_null_filter;

	bufev_f = FUNC9(1, sizeof(struct bufferevent_filtered));
	if (!bufev_f)
		return NULL;

	if (FUNC3(&bufev_f->bev, underlying->ev_base,
				    &bufferevent_ops_filter, tmp_options) < 0) {
		FUNC10(bufev_f);
		return NULL;
	}
	if (options & BEV_OPT_THREADSAFE) {
		FUNC1(FUNC7(bufev_f), NULL);
	}

	bufev_f->underlying = underlying;

	bufev_f->process_in = input_filter;
	bufev_f->process_out = output_filter;
	bufev_f->free_context = free_context;
	bufev_f->context = ctx;

	FUNC5(bufev_f->underlying,
	    be_filter_readcb, be_filter_writecb, be_filter_eventcb, bufev_f);

	bufev_f->outbuf_cb = FUNC8(FUNC7(bufev_f)->output,
	   bufferevent_filtered_outbuf_cb, bufev_f);

	FUNC4(FUNC7(bufev_f));
	FUNC2(underlying);

	FUNC0(underlying, EV_READ|EV_WRITE);
	FUNC6(underlying, BEV_SUSPEND_FILT_READ);

	return FUNC7(bufev_f);
}
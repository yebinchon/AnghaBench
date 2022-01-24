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
struct evmap_io {int /*<<< orphan*/  events; scalar_t__ nclose; scalar_t__ nwrite; scalar_t__ nread; } ;
struct eventop {int (* add ) (struct event_base*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,short,void*) ;scalar_t__ fdinfo_len; } ;
struct event_base {struct eventop* evsel; } ;
struct event {short ev_events; } ;
typedef  int /*<<< orphan*/  evutil_socket_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evmap_io*) ; 
 short EV_CLOSED ; 
 short EV_ET ; 
 short EV_READ ; 
 short EV_WRITE ; 
 struct event* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC3 (struct event_base*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,short,void*) ; 

__attribute__((used)) static int
FUNC4(struct event_base *base, evutil_socket_t fd,
    struct evmap_io *ctx, void *arg)
{
	const struct eventop *evsel = base->evsel;
	void *extra;
	int *result = arg;
	short events = 0;
	struct event *ev;
	FUNC0(ctx);

	extra = ((char*)ctx) + sizeof(struct evmap_io);
	if (ctx->nread)
		events |= EV_READ;
	if (ctx->nwrite)
		events |= EV_WRITE;
	if (ctx->nclose)
		events |= EV_CLOSED;
	if (evsel->fdinfo_len)
		FUNC2(extra, 0, evsel->fdinfo_len);
	if (events &&
	    (ev = FUNC1(&ctx->events)) &&
	    (ev->ev_events & EV_ET))
		events |= EV_ET;
	if (evsel->add(base, fd, 0, events, extra) == -1)
		*result = -1;

	return 0;
}
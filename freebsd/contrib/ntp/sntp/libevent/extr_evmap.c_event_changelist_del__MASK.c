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
struct event_changelist_fdinfo {int dummy; } ;
struct event_changelist {int dummy; } ;
struct event_change {short old_events; void* close_change; void* write_change; void* read_change; } ;
struct event_base {struct event_changelist changelist; } ;
typedef  int /*<<< orphan*/  evutil_socket_t ;

/* Variables and functions */
 void* EV_CHANGE_DEL ; 
 short EV_CLOSED ; 
 short EV_READ ; 
 short EV_SIGNAL ; 
 short EV_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct event_base*) ; 
 struct event_change* FUNC1 (struct event_changelist*,int /*<<< orphan*/ ,short,struct event_changelist_fdinfo*) ; 

int
FUNC2(struct event_base *base, evutil_socket_t fd, short old, short events,
    void *p)
{
	struct event_changelist *changelist = &base->changelist;
	struct event_changelist_fdinfo *fdinfo = p;
	struct event_change *change;

	FUNC0(base);
	change = FUNC1(changelist, fd, old, fdinfo);
	FUNC0(base);
	if (!change)
		return -1;

	/* A delete on an event set that doesn't contain the event to be
	   deleted produces a no-op.  This effectively emoves any previous
	   uncommitted add, rather than replacing it: on those platforms where
	   "add, delete, dispatch" is not the same as "no-op, dispatch", we
	   want the no-op behavior.

	   If we have a no-op item, we could remove it it from the list
	   entirely, but really there's not much point: skipping the no-op
	   change when we do the dispatch later is far cheaper than rejuggling
	   the array now.

	   As this stands, it also lets through deletions of events that are
	   not currently set.
	 */

	if (events & (EV_READ|EV_SIGNAL)) {
		if (!(change->old_events & (EV_READ | EV_SIGNAL)))
			change->read_change = 0;
		else
			change->read_change = EV_CHANGE_DEL;
	}
	if (events & EV_WRITE) {
		if (!(change->old_events & EV_WRITE))
			change->write_change = 0;
		else
			change->write_change = EV_CHANGE_DEL;
	}
	if (events & EV_CLOSED) {
		if (!(change->old_events & EV_CLOSED))
			change->close_change = 0;
		else
			change->close_change = EV_CHANGE_DEL;
	}

	FUNC0(base);
	return (0);
}
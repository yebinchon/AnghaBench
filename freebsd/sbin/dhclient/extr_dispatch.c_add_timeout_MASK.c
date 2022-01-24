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
typedef  scalar_t__ time_t ;
struct timeout {void (* func ) (void*) ;void* what; scalar_t__ when; struct timeout* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct timeout* free_timeouts ; 
 struct timeout* FUNC1 (int) ; 
 struct timeout* timeouts ; 

void
FUNC2(time_t when, void (*where)(void *), void *what)
{
	struct timeout *t, *q;

	/* See if this timeout supersedes an existing timeout. */
	t = NULL;
	for (q = timeouts; q; q = q->next) {
		if (q->func == where && q->what == what) {
			if (t)
				t->next = q->next;
			else
				timeouts = q->next;
			break;
		}
		t = q;
	}

	/* If we didn't supersede a timeout, allocate a timeout
	   structure now. */
	if (!q) {
		if (free_timeouts) {
			q = free_timeouts;
			free_timeouts = q->next;
			q->func = where;
			q->what = what;
		} else {
			q = FUNC1(sizeof(struct timeout));
			if (!q)
				FUNC0("Can't allocate timeout structure!");
			q->func = where;
			q->what = what;
		}
	}

	q->when = when;

	/* Now sort this timeout into the timeout list. */

	/* Beginning of list? */
	if (!timeouts || timeouts->when > q->when) {
		q->next = timeouts;
		timeouts = q;
		return;
	}

	/* Middle of list? */
	for (t = timeouts; t->next; t = t->next) {
		if (t->next->when > q->when) {
			q->next = t->next;
			t->next = q;
			return;
		}
	}

	/* End of list. */
	t->next = q;
	q->next = NULL;
}
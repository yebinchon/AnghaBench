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
struct event_callback {int dummy; } ;
struct event_base {scalar_t__ n_deferreds_queued; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct event_base*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct event_base*,int /*<<< orphan*/ ) ; 
 scalar_t__ MAX_DEFERREDS_QUEUED ; 
 struct event_base* current_base ; 
 int /*<<< orphan*/  FUNC2 (struct event_base*,struct event_callback*) ; 
 int FUNC3 (struct event_base*,struct event_callback*) ; 
 int /*<<< orphan*/  th_base_lock ; 

int
FUNC4(struct event_base *base, struct event_callback *cb)
{
	int r = 1;
	if (!base)
		base = current_base;
	FUNC0(base, th_base_lock);
	if (base->n_deferreds_queued > MAX_DEFERREDS_QUEUED) {
		FUNC2(base, cb);
	} else {
		++base->n_deferreds_queued;
		r = FUNC3(base, cb);
	}
	FUNC1(base, th_base_lock);
	return r;
}
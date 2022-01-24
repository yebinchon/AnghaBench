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
struct event_base {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct event_base*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct event_base*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct event_base*,unsigned int,struct event_callback*,void (*) (struct event_callback*,void*)) ; 
 int /*<<< orphan*/  th_base_lock ; 

void
FUNC3(struct event_base *base, unsigned flags, struct event_callback *evcb, void (*cb)(struct event_callback *, void *))
{
	FUNC0(base, th_base_lock);
	FUNC2(base, flags, evcb, cb);
	FUNC1(base, th_base_lock);
}
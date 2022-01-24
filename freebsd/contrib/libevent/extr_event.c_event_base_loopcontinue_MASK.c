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
struct event_base {int event_continue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct event_base*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct event_base*) ; 
 int /*<<< orphan*/  FUNC2 (struct event_base*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct event_base*) ; 
 int /*<<< orphan*/  th_base_lock ; 

int
FUNC4(struct event_base *event_base)
{
	int r = 0;
	if (event_base == NULL)
		return (-1);

	FUNC0(event_base, th_base_lock);
	event_base->event_continue = 1;

	if (FUNC1(event_base)) {
		r = FUNC3(event_base);
	} else {
		r = (0);
	}
	FUNC2(event_base, th_base_lock);
	return r;
}
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
 int FUNC2 (struct event_base*,struct event_callback*) ; 
 int /*<<< orphan*/  th_base_lock ; 

int
FUNC3(struct event_base *base,
    struct event_callback *evcb)
{
	int r;
	FUNC0(base, th_base_lock);
	r = FUNC2(base, evcb);
	FUNC1(base, th_base_lock);
	return r;
}
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
struct event {int dummy; } ;
typedef  int /*<<< orphan*/  event_finalize_callback_fn ;

/* Variables and functions */
 unsigned int EVENT_FINALIZE_FREE_ ; 
 int FUNC0 (unsigned int,struct event*,int /*<<< orphan*/ ) ; 

int
FUNC1(unsigned flags, struct event *ev, event_finalize_callback_fn cb)
{
	return FUNC0(flags|EVENT_FINALIZE_FREE_, ev, cb);
}
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
struct event {int /*<<< orphan*/  ev_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct event*,int) ; 
 int /*<<< orphan*/  th_base_lock ; 

void
FUNC3(struct event *ev, int res)
{
	FUNC0(ev->ev_base, th_base_lock);
	FUNC2(ev, res);
	FUNC1(ev->ev_base, th_base_lock);
}
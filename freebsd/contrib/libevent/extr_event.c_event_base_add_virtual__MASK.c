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
struct event_base {int /*<<< orphan*/  virtual_event_count; int /*<<< orphan*/  virtual_event_count_max; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct event_base*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct event_base*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  th_base_lock ; 

void
FUNC3(struct event_base *base)
{
	FUNC0(base, th_base_lock);
	base->virtual_event_count++;
	FUNC2(base->virtual_event_count_max, base->virtual_event_count);
	FUNC1(base, th_base_lock);
}
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
struct timeval {int dummy; } ;
struct event_base {int /*<<< orphan*/  monotonic_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct event_base*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct event_base*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  th_base_lock ; 

int
FUNC3(struct event_base *base, struct timeval *tv)
{
  int rv = -1;

  if (base && tv) {
    FUNC0(base, th_base_lock);
    rv = FUNC2(&(base->monotonic_timer), tv);
    FUNC1(base, th_base_lock);
  }

  return rv;
}
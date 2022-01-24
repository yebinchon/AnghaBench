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
struct evutil_monotonic_timer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evutil_monotonic_timer*,int /*<<< orphan*/ ,int) ; 
 struct evutil_monotonic_timer* FUNC1 (int) ; 

struct evutil_monotonic_timer *
FUNC2(void)
{
  struct evutil_monotonic_timer *p = NULL;

  p = FUNC1(sizeof(*p));
  if (!p) goto done;

  FUNC0(p, 0, sizeof(*p));

 done:
  return p;
}
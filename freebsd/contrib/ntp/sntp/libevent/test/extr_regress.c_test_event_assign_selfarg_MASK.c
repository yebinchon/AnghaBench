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
struct event_base {int dummy; } ;
struct event {int dummy; } ;
struct basic_test_data {struct event_base* base; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_READ ; 
 int /*<<< orphan*/  FUNC0 (struct event*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct event*,struct event_base*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct event_base*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  event_selfarg_cb ; 

__attribute__((used)) static void
FUNC4(void *ptr)
{
	struct basic_test_data *data = ptr;
	struct event_base *base = data->base;
	struct event ev;

	FUNC1(&ev, base, -1, EV_READ, event_selfarg_cb,
                     FUNC3());
	FUNC0(&ev, EV_READ, 1);
	FUNC2(base);
}
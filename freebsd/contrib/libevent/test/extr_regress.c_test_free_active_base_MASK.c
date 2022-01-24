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
struct basic_test_data {int /*<<< orphan*/ * pair; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_READ ; 
 int /*<<< orphan*/  dummy_read_cb ; 
 int /*<<< orphan*/  FUNC0 (struct event*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct event*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct event*,struct event_base*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct event_base*) ; 
 struct event_base* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct event_base*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void
FUNC7(void *ptr)
{
	struct basic_test_data *data = ptr;
	struct event_base *base1;
	struct event ev1;

	base1 = FUNC4();
	if (base1) {
		FUNC2(&ev1, base1, data->pair[1], EV_READ,
			     dummy_read_cb, NULL);
		FUNC1(&ev1, NULL);
		FUNC3(base1);	 /* should not crash */
	} else {
		FUNC6("failed to create event_base for test");
	}

	base1 = FUNC4();
	FUNC5(base1);
	FUNC2(&ev1, base1, 0, 0, dummy_read_cb, NULL);
	FUNC0(&ev1, EV_READ, 1);
	FUNC3(base1);
end:
	;
}
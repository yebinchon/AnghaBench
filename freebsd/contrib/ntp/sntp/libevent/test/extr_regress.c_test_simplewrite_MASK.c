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

/* Variables and functions */
 int /*<<< orphan*/  EV_WRITE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (struct event*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct event*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct event*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/ * pair ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  simple_write_cb ; 

__attribute__((used)) static void
FUNC6(void)
{
	struct event ev;

	/* Very simple write test */
	FUNC5("Simple write: ");

	FUNC3(&ev, pair[0], EV_WRITE, simple_write_cb, &ev);
	if (FUNC1(&ev, NULL) == -1)
		FUNC4(1);
	FUNC2();

	FUNC0();
}
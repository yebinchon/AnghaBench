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
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct event {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  break_cb ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct event*,struct timeval*) ; 
 int /*<<< orphan*/  FUNC5 (struct event*) ; 
 int /*<<< orphan*/  FUNC6 (struct event*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fail_cb ; 
 int /*<<< orphan*/  global_base ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static void
FUNC9(void)
{
	struct event ev1, ev2;
	struct timeval tv;

	FUNC7("Loop break: ");

	tv.tv_sec = 0;
	tv.tv_usec = 0;
	FUNC6(&ev1, break_cb, NULL);
	FUNC4(&ev1, &tv);
	FUNC6(&ev2, fail_cb, NULL);
	FUNC4(&ev2, &tv);

	FUNC3();

	FUNC8(!FUNC2(global_base));
	FUNC8(FUNC1(global_base));

	FUNC5(&ev1);
	FUNC5(&ev2);

end:
	FUNC0();
}
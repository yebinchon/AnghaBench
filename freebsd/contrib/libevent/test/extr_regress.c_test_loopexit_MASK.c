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
struct timeval {int tv_usec; int tv_sec; } ;
struct event {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct timeval*) ; 
 int /*<<< orphan*/  FUNC5 (struct event*,struct timeval*) ; 
 int /*<<< orphan*/  FUNC6 (struct event*) ; 
 int /*<<< orphan*/  FUNC7 (struct event*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  global_base ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int test_ok ; 
 int /*<<< orphan*/  FUNC10 (struct timeval*,struct timeval*,int) ; 
 int /*<<< orphan*/  timeout_cb ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

__attribute__((used)) static void
FUNC12(void)
{
	struct timeval tv, tv_start, tv_end;
	struct event ev;

	FUNC9("Loop exit: ");

	tv.tv_usec = 0;
	tv.tv_sec = 60*60*24;
	FUNC7(&ev, timeout_cb, NULL);
	FUNC5(&ev, &tv);

	tv.tv_usec = 300*1000;
	tv.tv_sec = 0;
	FUNC4(&tv);

	FUNC8(&tv_start, NULL);
	FUNC3();
	FUNC8(&tv_end, NULL);

	FUNC6(&ev);

	FUNC11(FUNC2(global_base));
	FUNC11(!FUNC1(global_base));

	FUNC10(&tv_start, &tv_end, 300);

	test_ok = 1;
end:
	FUNC0();
}
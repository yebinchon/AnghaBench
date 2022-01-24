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
struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
struct event {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct event*,struct timeval*) ; 
 int /*<<< orphan*/  FUNC3 (struct event*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  tcalled ; 
 int test_ok ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  timeout_cb ; 
 int /*<<< orphan*/  tset ; 

__attribute__((used)) static void
FUNC8(void)
{
	struct timeval tv;
	struct event ev;

	FUNC6("Simple timeout: ");

	tv.tv_usec = 200*1000;
	tv.tv_sec = 0;
	FUNC5(&tcalled);
	FUNC3(&ev, timeout_cb, NULL);
	FUNC2(&ev, &tv);

	FUNC4(&tset, NULL);
	FUNC1();
	FUNC7(&tset, &tcalled, 200);

	test_ok = 1;
end:
	FUNC0();
}
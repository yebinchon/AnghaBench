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
struct event_base {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct event_base*) ; 
 int /*<<< orphan*/  FUNC2 (struct event_base*) ; 
 int /*<<< orphan*/  FUNC3 (struct event_base*) ; 
 int FUNC4 (struct event_base*) ; 
 int /*<<< orphan*/  FUNC5 (struct event_base*,struct timeval*) ; 
 struct event_base* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int test_ok ; 
 int /*<<< orphan*/  FUNC9 (struct timeval*,struct timeval*,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static void
FUNC11(void)
{
	struct timeval tv, tv_start, tv_end;
	struct event_base *base;

	FUNC8("Loop Multiple exit: ");

	base = FUNC6();

	tv.tv_usec = 200*1000;
	tv.tv_sec = 0;
	FUNC5(base, &tv);

	tv.tv_usec = 0;
	tv.tv_sec = 3;
	FUNC5(base, &tv);

	FUNC7(&tv_start, NULL);
	FUNC1(base);
	FUNC7(&tv_end, NULL);

	FUNC10(FUNC4(base));
	FUNC10(!FUNC3(base));

	FUNC2(base);

	FUNC9(&tv_start, &tv_end, 200);

	test_ok = 1;

end:
	FUNC0();
}
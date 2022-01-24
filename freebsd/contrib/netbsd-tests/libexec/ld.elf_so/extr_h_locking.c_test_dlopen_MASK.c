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
typedef  int /*<<< orphan*/  pthread_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int dlopen_cookie ; 
 int /*<<< orphan*/  init_fini_helper ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ sleep_fini ; 
 int sleep_init ; 

__attribute__((used)) static void
FUNC5(void)
{
	pthread_t t1, t2;
	sleep_init = 1;
	sleep_fini = 0;
	FUNC2("%d\n", dlopen_cookie);
	FUNC3(&t1, NULL, init_fini_helper,
	    FUNC0("libh_helper_dso2.so"));
	FUNC4(1);
	FUNC2("%d\n", dlopen_cookie);
	if (dlopen_cookie != 1)
		FUNC1(1);
	FUNC4(1);
	FUNC3(&t2, NULL, init_fini_helper,
	    FUNC0("libutil.so"));
	FUNC2("%d\n", dlopen_cookie);
	if (dlopen_cookie != 1)
		FUNC1(1);
	FUNC1(0);
}
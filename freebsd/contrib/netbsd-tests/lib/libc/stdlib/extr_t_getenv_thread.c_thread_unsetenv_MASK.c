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
typedef  scalar_t__ time_t ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t THREADED_NUM_VARS ; 
 char* THREADED_VAR_NAME ; 
 size_t FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,size_t) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (char*) ; 

__attribute__((used)) static void *
FUNC5(void *arg)
{
	time_t endtime;

	endtime = *(time_t *)arg;
	do {
		size_t i;
		char name[32];

		i = FUNC1() % THREADED_NUM_VARS;
		(void)FUNC2(name, sizeof(name), THREADED_VAR_NAME, i);

		FUNC0(FUNC4(name) != -1);
	} while (FUNC3(NULL) < endtime);

	return NULL;
}
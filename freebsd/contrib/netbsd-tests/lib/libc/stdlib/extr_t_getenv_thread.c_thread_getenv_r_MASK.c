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
typedef  int /*<<< orphan*/  value ;
typedef  scalar_t__ time_t ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ ENOENT ; 
 size_t THREADED_NUM_VARS ; 
 char* THREADED_VAR_NAME ; 
 scalar_t__ errno ; 
 int FUNC1 (char*,char*,int) ; 
 size_t FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,size_t) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void *
FUNC5(void *arg)
{
	time_t endtime;

	endtime = *(time_t *)arg;
	do {
		size_t i;
		char name[32], value[128];

		i = FUNC2() % THREADED_NUM_VARS;
		(void)FUNC3(name, sizeof(name), THREADED_VAR_NAME, i);

		if (FUNC1(name, value, sizeof(value)) == -1) {
			FUNC0(errno == ENOENT);
		}
	} while (FUNC4(NULL) < endtime);

	return NULL;
}
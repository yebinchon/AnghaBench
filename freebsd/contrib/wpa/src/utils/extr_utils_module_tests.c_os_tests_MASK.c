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
typedef  int /*<<< orphan*/  os_time_t ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_INFO ; 
 void* FUNC0 (size_t,size_t) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 scalar_t__ FUNC3 (int,int,int,int,int,int,int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ *,size_t,size_t) ; 
 scalar_t__ FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 scalar_t__ FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC9(void)
{
	int errors = 0;
	void *ptr;
	os_time_t t;

	FUNC8(MSG_INFO, "os tests");

	ptr = FUNC0((size_t) -1, (size_t) -1);
	if (ptr) {
		errors++;
		FUNC2(ptr);
	}
	ptr = FUNC0((size_t) 2, (size_t) -1);
	if (ptr) {
		errors++;
		FUNC2(ptr);
	}
	ptr = FUNC0((size_t) -1, (size_t) 2);
	if (ptr) {
		errors++;
		FUNC2(ptr);
	}

	ptr = FUNC4(NULL, (size_t) -1, (size_t) -1);
	if (ptr) {
		errors++;
		FUNC2(ptr);
	}

	FUNC6(1, 1);

	if (FUNC3(1969, 1, 1, 1, 1, 1, &t) == 0 ||
	    FUNC3(1971, 0, 1, 1, 1, 1, &t) == 0 ||
	    FUNC3(1971, 13, 1, 1, 1, 1, &t) == 0 ||
	    FUNC3(1971, 1, 0, 1, 1, 1, &t) == 0 ||
	    FUNC3(1971, 1, 32, 1, 1, 1, &t) == 0 ||
	    FUNC3(1971, 1, 1, -1, 1, 1, &t) == 0 ||
	    FUNC3(1971, 1, 1, 24, 1, 1, &t) == 0 ||
	    FUNC3(1971, 1, 1, 1, -1, 1, &t) == 0 ||
	    FUNC3(1971, 1, 1, 1, 60, 1, &t) == 0 ||
	    FUNC3(1971, 1, 1, 1, 1, -1, &t) == 0 ||
	    FUNC3(1971, 1, 1, 1, 1, 61, &t) == 0 ||
	    FUNC3(1971, 1, 1, 1, 1, 1, &t) != 0 ||
	    FUNC3(2020, 1, 2, 3, 4, 5, &t) != 0 ||
	    FUNC3(2015, 12, 31, 23, 59, 59, &t) != 0)
		errors++;

	if (FUNC5("hwsim_test_env", "test value", 0) != 0 ||
	    FUNC5("hwsim_test_env", "test value 2", 1) != 0 ||
	    FUNC7("hwsim_test_env") != 0)
		errors++;

	if (FUNC1("/this-file-does-not-exists-hwsim") != 0)
		errors++;

	if (errors) {
		FUNC8(MSG_ERROR, "%d os test(s) failed", errors);
		return -1;
	}

	return 0;
}
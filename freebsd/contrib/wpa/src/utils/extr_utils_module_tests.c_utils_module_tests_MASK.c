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

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 () ; 
 scalar_t__ FUNC8 () ; 
 scalar_t__ FUNC9 () ; 
 scalar_t__ FUNC10 () ; 
 scalar_t__ FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC13 () ; 

int FUNC14(void)
{
	int ret = 0;

	FUNC12(MSG_INFO, "utils module tests");

	if (FUNC10() < 0 ||
	    FUNC5() < 0 ||
	    FUNC11() < 0 ||
	    FUNC1() < 0 ||
	    FUNC0() < 0 ||
	    FUNC2() < 0 ||
	    FUNC9() < 0 ||
	    FUNC13() < 0 ||
	    FUNC7() < 0 ||
	    FUNC4() < 0 ||
	    FUNC8() < 0 ||
	    FUNC3() < 0 ||
	    FUNC6() < 0)
		ret = -1;

	return ret;
}
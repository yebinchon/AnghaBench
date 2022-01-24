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
 scalar_t__ FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 

int FUNC14(void)
{
	int ret = 0;

	FUNC13(MSG_INFO, "crypto module tests");
	if (FUNC12() ||
	    FUNC8() ||
	    FUNC1() ||
	    FUNC0() ||
	    FUNC2() ||
	    FUNC5() ||
	    FUNC6() ||
	    FUNC9() ||
	    FUNC10() ||
	    FUNC11() ||
	    FUNC4() ||
	    FUNC3() ||
	    FUNC7())
		ret = -1;

	return ret;
}
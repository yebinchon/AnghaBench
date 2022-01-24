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
 size_t FUNC0 (char const* const*) ; 
 int /*<<< orphan*/  LIB_BUFLENGTH ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*,size_t) ; 

const char *
FUNC3(
	size_t mode
	)
{
	char *bp;
	static const char * const modestrings[] = {
		"unspec",
		"sym_active",
		"sym_passive",
		"client",
		"server",
		"broadcast",
		"control",
		"private",
		"bclient",
	};

	if (mode >= FUNC0(modestrings)) {
		FUNC1(bp);
		FUNC2(bp, LIB_BUFLENGTH, "mode#%zu", mode);
		return bp;
	}

	return modestrings[mode];
}
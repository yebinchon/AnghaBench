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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 char* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 scalar_t__ verb ; 

__attribute__((used)) static void
FUNC7(const char* file)
{
	const char* builtin_root_anchor = FUNC3();
	FILE* out = FUNC1(file, "w");
	if(!out) {
		if(verb) FUNC4("%s: %s\n", file, FUNC5(errno));
		if(verb) FUNC4("  could not write builtin anchor\n");
		return;
	}
	if(!FUNC2(builtin_root_anchor, FUNC6(builtin_root_anchor), 1, out)) {
		if(verb) FUNC4("%s: %s\n", file, FUNC5(errno));
		if(verb) FUNC4("  could not complete write builtin anchor\n");
	}
	FUNC0(out);
}
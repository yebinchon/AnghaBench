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
typedef  int /*<<< orphan*/  line ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 int verb ; 

__attribute__((used)) static int
FUNC6(const char* file)
{
	FILE* in = FUNC2(file, "r");
	char line[8192];
	if(!in) {
		if(verb>=2) FUNC3("%s: %s\n", file, FUNC4(errno));
		return 0;
	}
	while(FUNC1(line, (int)sizeof(line), in)) {
		if(line[0]==';') continue;
		if(FUNC5(line, "[ ADDPEND ]")) {
			FUNC0(in);
			if(verb) FUNC3("RFC5011-state has ADDPEND keys\n");
			return 1;
		}
	}
	FUNC0(in);
	return 0;
}
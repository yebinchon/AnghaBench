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
 scalar_t__ ENOENT ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 char* FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (char*,char*,int) ; 
 scalar_t__ verb ; 

__attribute__((used)) static int
FUNC7(const char* file)
{
	int empty = 1;
	char line[10240];
	char* p;
	FILE* in = FUNC3(file, "r");
	if(!in) {
		/* only if the file does not exist, can we fix it */
		if(errno != ENOENT) {
			if(verb) FUNC4("%s: %s\n", file, FUNC5(errno));
			if(verb) FUNC4("error: cannot access the file\n");
			FUNC0(0);
		}
		if(verb) FUNC4("%s does not exist\n", file);
		return 0;
	}
	while(FUNC2(line, (int)sizeof(line), in)) {
		line[sizeof(line)-1] = 0;
		if(FUNC6(line, ";;REVOKED", 9) == 0) {
			FUNC1(in);
			if(verb) FUNC4("%s : the trust point is revoked\n"
				"and the zone is considered unsigned.\n"
				"if you wish to re-enable, delete the file\n",
				file);
			return 1;
		}
		p=line;
		while(*p == ' ' || *p == '\t')
			p++;
		if(p[0]==0 || p[0]=='\n' || p[0]==';') continue;
		/* this line is a line of content */
		empty = 0;
	}
	FUNC1(in);
	if(empty) {
		if(verb) FUNC4("%s is empty\n", file);
		return 0;
	}
	if(verb) FUNC4("%s has content\n", file);
	return 2;
}
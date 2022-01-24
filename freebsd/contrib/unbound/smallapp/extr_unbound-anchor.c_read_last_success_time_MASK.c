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
typedef  unsigned int time_t ;
typedef  int /*<<< orphan*/  line ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* FUNC0 (unsigned int*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char*,char*,int) ; 
 scalar_t__ FUNC7 (char*,char**,int) ; 
 scalar_t__ verb ; 

__attribute__((used)) static int32_t
FUNC8(const char* file)
{
	FILE* in = FUNC3(file, "r");
	char line[1024];
	if(!in) {
		if(verb) FUNC4("%s: %s\n", file, FUNC5(errno));
		return 0;
	}
	while(FUNC2(line, (int)sizeof(line), in)) {
		if(FUNC6(line, ";;last_success: ", 16) == 0) {
			char* e;
			time_t x = (unsigned int)FUNC7(line+16, &e, 10);
			FUNC1(in);
			if(line+16 == e) {
				if(verb) FUNC4("failed to parse "
					"last_success probe time\n");
				return 0;
			}
			if(verb) FUNC4("last successful probe: %s", FUNC0(&x));
			return (int32_t)x;
		}
	}
	FUNC1(in);
	if(verb) FUNC4("no last_success probe time in anchor file\n");
	return 0;
}
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
 int BUFSIZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 char* FUNC3 (char*,char) ; 
 scalar_t__ FUNC4 (char*,char*) ; 

__attribute__((used)) static int
FUNC5(char *fname, char *name)
{
	FILE *fd;
	int found = 0;
	char *p, line[BUFSIZ];

	if ((fd = FUNC2(fname, "r")) != NULL) {
		while (FUNC1(line, sizeof(line), fd) != NULL)
			if ((p = FUNC3(line, '\n')) != NULL) {
				*p = '\0';
				if (line[0] == '#')
					continue;
				if (FUNC4(line, name) == 0) {
					found = 1;
					break;
				}
			}
		FUNC0(fd);
	}
	return (found);
}
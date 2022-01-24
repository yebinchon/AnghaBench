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
 int /*<<< orphan*/  WS ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  hosts ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(const char *fname)
{
	FILE *fp;
	size_t len;
	char *line;

	if ((fp = FUNC3(fname, "r")) == NULL)
		FUNC0(1, "Cannot open `%s'", fname);
	while ((line = FUNC2(fp, &len)) != NULL) {
		char c = line[len];
		char *ptr;
		line[len] = '\0';
		for (ptr = FUNC6(line, WS); ptr; ptr = FUNC6(NULL, WS))
			FUNC4(hosts, FUNC5(ptr));
		line[len] = c;
	}

	(void)FUNC1(fp);
}
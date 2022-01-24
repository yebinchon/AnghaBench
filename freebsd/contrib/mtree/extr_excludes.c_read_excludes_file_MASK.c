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
struct exclude {char* glob; int pathname; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FPARSELN_UNESCCOMM ; 
 int FPARSELN_UNESCCONT ; 
 int FPARSELN_UNESCESC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct exclude*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*) ; 
 int /*<<< orphan*/  excludes ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  link ; 
 struct exclude* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/ * FUNC7 (char*,char) ; 

void
FUNC8(const char *name)
{
	FILE *fp;
	char *line;
	struct exclude *e;

	fp = FUNC3(name, "r");
	if (fp == 0)
		FUNC1(1, "%s", name);

	while ((line = FUNC4(fp, NULL, NULL, NULL,
	    FPARSELN_UNESCCOMM | FPARSELN_UNESCCONT | FPARSELN_UNESCESC))
	    != NULL) {
		if (line[0] == '\0')
			continue;

		if ((e = FUNC5(sizeof *e)) == NULL)
			FUNC6("memory allocation error");

		e->glob = line;
		if (FUNC7(e->glob, '/') != NULL)
			e->pathname = 1;
		else
			e->pathname = 0;
		FUNC0(&excludes, e, link);
	}
	FUNC2(fp);
}
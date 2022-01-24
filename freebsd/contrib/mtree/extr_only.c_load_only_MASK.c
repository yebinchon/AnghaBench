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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FPARSELN_UNESCALL ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,size_t*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int loaded ; 

void
FUNC8(const char *fname)
{
	FILE *fp;
	char *line;
	size_t len, lineno;

	if ((fp = FUNC3(fname, "r")) == NULL)
		FUNC0(1, "Cannot open `%s'", fname);

	while ((line = FUNC4(fp, &len, &lineno, NULL, FPARSELN_UNESCALL))) {
		uint32_t h;
		if (FUNC6(line, &h))
			FUNC0(1, "Duplicate entry %s", line);
		FUNC7(line, h);
		FUNC2(line);
		FUNC5(line);
	}

	FUNC1(fp);
	loaded = true;
}
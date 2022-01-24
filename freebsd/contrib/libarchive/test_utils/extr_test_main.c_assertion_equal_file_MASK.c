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
typedef  int /*<<< orphan*/  buff2 ;
typedef  int /*<<< orphan*/  buff1 ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char*) ; 
 scalar_t__ FUNC5 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 scalar_t__ FUNC7 (char*,char*,int) ; 

int
FUNC8(const char *filename, int line, const char *fn1, const char *fn2)
{
	char buff1[1024];
	char buff2[1024];
	FILE *f1, *f2;
	int n1, n2;

	FUNC0(filename, line);

	f1 = FUNC4(fn1, "rb");
	f2 = FUNC4(fn2, "rb");
	if (f1 == NULL || f2 == NULL) {
		if (f1) FUNC3(f1);
		if (f2) FUNC3(f2);
		return (0);
	}
	for (;;) {
		n1 = (int)FUNC5(buff1, 1, sizeof(buff1), f1);
		n2 = (int)FUNC5(buff2, 1, sizeof(buff2), f2);
		if (n1 != n2)
			break;
		if (n1 == 0 && n2 == 0) {
			FUNC3(f1);
			FUNC3(f2);
			return (1);
		}
		if (FUNC7(buff1, buff2, n1) != 0)
			break;
	}
	FUNC3(f1);
	FUNC3(f2);
	FUNC2(filename, line, "Files not identical");
	FUNC6("  file1=\"%s\"\n", fn1);
	FUNC6("  file2=\"%s\"\n", fn2);
	FUNC1(NULL);
	return (0);
}
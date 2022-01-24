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
typedef  enum test_predicate { ____Placeholder_test_predicate } test_predicate ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char,char,int) ; 
 int VIS_NL ; 
 int VIS_OCTAL ; 
 int VIS_SAFE ; 
 int VIS_TAB ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,char*,char) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char const*,int,char const*,char const*,char*,int) ; 
 char* FUNC4 (char*,char,int,int /*<<< orphan*/ ) ; 

void
FUNC5(const char *file, int line, const char *a1, const char *a2,
    char aa1, char aa2, enum test_predicate pred)
{
	char buf[8];

	FUNC0(aa1, aa2, pred);
	FUNC3(file, line, a1, a2, "CHAR", pred);
	FUNC1(stderr, "%12s = '%s' / 0x02%hhx\n", a1,
	    FUNC4(buf, aa1, VIS_SAFE|VIS_NL|VIS_TAB|VIS_OCTAL, 0), aa1);
	FUNC1(stderr, "%12s = '%s' / 0x02%hhx\n", a1,
	    FUNC4(buf, aa2, VIS_SAFE|VIS_NL|VIS_TAB|VIS_OCTAL, 0), aa2);
	FUNC2();
}
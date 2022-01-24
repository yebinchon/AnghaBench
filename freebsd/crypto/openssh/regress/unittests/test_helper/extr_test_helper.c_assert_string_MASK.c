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
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  TEST_NE ; 
 int /*<<< orphan*/  FUNC1 (char const*,int,char const*,char*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC3 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char const*,int,char const*,char const*,char*,int) ; 

void
FUNC7(const char *file, int line, const char *a1, const char *a2,
    const char *aa1, const char *aa2, enum test_predicate pred)
{
	int r;

	/* Verify pointers are not NULL */
	FUNC1(file, line, a1, "NULL", aa1, NULL, TEST_NE);
	FUNC1(file, line, a2, "NULL", aa2, NULL, TEST_NE);

	r = FUNC3(aa1, aa2);
	FUNC0(r, pred);
	FUNC6(file, line, a1, a2, "STRING", pred);
	FUNC2(stderr, "%12s = %s (len %d)\n", a1, aa1, FUNC4(aa1));
	FUNC2(stderr, "%12s = %s (len %d)\n", a2, aa2, FUNC4(aa2));
	FUNC5();
}
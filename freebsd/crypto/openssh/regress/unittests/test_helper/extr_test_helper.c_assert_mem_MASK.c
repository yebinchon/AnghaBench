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
 int /*<<< orphan*/  FUNC0 (size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  TEST_NE ; 
 int /*<<< orphan*/  FUNC2 (char const*,int,char const*,char*,void const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*,char*,size_t) ; 
 int FUNC4 (void const*,void const*,size_t) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char const*,int,char const*,char const*,char*,int) ; 
 char* FUNC7 (void const*,int /*<<< orphan*/ ) ; 

void
FUNC8(const char *file, int line, const char *a1, const char *a2,
    const void *aa1, const void *aa2, size_t l, enum test_predicate pred)
{
	int r;

	if (l == 0)
		return;
	/* If length is >0, then verify pointers are not NULL */
	FUNC2(file, line, a1, "NULL", aa1, NULL, TEST_NE);
	FUNC2(file, line, a2, "NULL", aa2, NULL, TEST_NE);

	r = FUNC4(aa1, aa2, l);
	FUNC1(r, pred);
	FUNC6(file, line, a1, a2, "STRING", pred);
	FUNC3(stderr, "%12s = %s (len %zu)\n", a1, FUNC7(aa1, FUNC0(l, 256)), l);
	FUNC3(stderr, "%12s = %s (len %zu)\n", a2, FUNC7(aa2, FUNC0(l, 256)), l);
	FUNC5();
}
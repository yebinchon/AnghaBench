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
typedef  int u_char ;
typedef  int /*<<< orphan*/  tmp ;
typedef  enum test_predicate { ____Placeholder_test_predicate } test_predicate ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  TEST_NE ; 
 int /*<<< orphan*/  FUNC2 (char const*,int,char const*,char*,void const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 int FUNC4 (void const*,int,size_t,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char const*,size_t) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char const*,int,char const*,int /*<<< orphan*/ *,char*,int) ; 
 char* FUNC8 (void const*,int /*<<< orphan*/ ) ; 

void
FUNC9(const char *file, int line, const char *a1,
    const void *aa1, u_char v, size_t l, enum test_predicate pred)
{
	size_t where = -1;
	int r;
	char tmp[64];

	if (l == 0)
		return;
	/* If length is >0, then verify the pointer is not NULL */
	FUNC2(file, line, a1, "NULL", aa1, NULL, TEST_NE);

	r = FUNC4(aa1, v, l, &where);
	FUNC1(r, pred);
	FUNC7(file, line, a1, NULL, "MEM_ZERO", pred);
	FUNC3(stderr, "%20s = %s%s (len %zu)\n", a1,
	    FUNC8(aa1, FUNC0(l, 20)), l > 20 ? "..." : "", l);
	FUNC5(tmp, sizeof(tmp), "(%s)[%zu]", a1, where);
	FUNC3(stderr, "%20s = 0x%02x (expected 0x%02x)\n", tmp,
	    ((u_char *)aa1)[where], v);
	FUNC6();
}
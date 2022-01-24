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
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/  const*) ; 
 int FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char const*,int,char const*,char const*,char*,int) ; 

void
FUNC6(const char *file, int line, const char *a1, const char *a2,
    const BIGNUM *aa1, const BIGNUM *aa2, enum test_predicate pred)
{
	int r = FUNC1(aa1, aa2);

	FUNC2(r, pred);
	FUNC5(file, line, a1, a2, "BIGNUM", pred);
	FUNC3(stderr, "%12s = 0x%s\n", a1, FUNC0(aa1));
	FUNC3(stderr, "%12s = 0x%s\n", a2, FUNC0(aa2));
	FUNC4();
}
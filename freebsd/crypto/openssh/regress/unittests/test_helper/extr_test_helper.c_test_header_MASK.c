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
 char* active_test_name ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  stderr ; 
 char* subtest_info ; 
 int test_number ; 

__attribute__((used)) static void
FUNC2(const char *file, int line, const char *a1, const char *a2,
    const char *name, enum test_predicate pred)
{
	FUNC0(stderr, "\n%s:%d test #%u \"%s\"%s%s\n", 
	    file, line, test_number, active_test_name,
	    *subtest_info != '\0' ? " - " : "", subtest_info);
	FUNC0(stderr, "ASSERT_%s_%s(%s%s%s) failed:\n",
	    name, FUNC1(pred), a1,
	    a2 != NULL ? ", " : "", a2 != NULL ? a2 : "");
}
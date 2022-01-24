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
typedef  int u_int32_t ;
typedef  enum test_predicate { ____Placeholder_test_predicate } test_predicate ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,int,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char const*,int,char const*,char const*,char*,int) ; 

void
FUNC4(const char *file, int line, const char *a1, const char *a2,
    u_int32_t aa1, u_int32_t aa2, enum test_predicate pred)
{
	FUNC0(aa1, aa2, pred);
	FUNC3(file, line, a1, a2, "U32", pred);
	FUNC1(stderr, "%12s = 0x%08x %u\n", a1, aa1, aa1);
	FUNC1(stderr, "%12s = 0x%08x %u\n", a2, aa2, aa2);
	FUNC2();
}
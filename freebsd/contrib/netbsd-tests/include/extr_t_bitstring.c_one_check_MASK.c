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
typedef  int /*<<< orphan*/  command ;
typedef  int /*<<< orphan*/  atf_tc_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ EXIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/  const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char*,int const) ; 
 scalar_t__ FUNC7 (char*) ; 

__attribute__((used)) static void
FUNC8(const atf_tc_t *tc, const int test_length)
{
	FILE *out;
	char command[1024];

	FUNC0((out = FUNC5("out", "w")) != NULL);
	FUNC3(out, test_length);
	FUNC4(out);

	/* XXX The following is a huge hack that was added to simplify the
	 * conversion of these tests from src/regress/ to src/tests/.  The
	 * tests in this file should be checking their own results, without
	 * having to resort to external data files. */
	FUNC6(command, sizeof(command), "diff -u %s/d_bitstring_%d.out out",
	    FUNC2(tc, "srcdir"), test_length);
	if (FUNC7(command) != EXIT_SUCCESS)
		FUNC1("Test failed; see output for details");
}
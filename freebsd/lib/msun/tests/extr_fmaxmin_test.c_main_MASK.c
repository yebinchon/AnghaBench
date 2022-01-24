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

/* Variables and functions */
 double INFINITY ; 
 double NAN ; 
 char* comment ; 
 double FUNC0 (double,double) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int,double,double) ; 

int
FUNC3(void)
{

	FUNC1("1..12\n");

	FUNC2(1, 1.0, 0.0);
	FUNC2(2, 42.0, FUNC0(42.0, -INFINITY));
	FUNC2(3, FUNC0(42.0, INFINITY), 42.0);
	FUNC2(4, -5.0, -5.0);
	FUNC2(5, -3.0, -4.0);
#ifdef affected_by_bug_208703
	comment = "# TODO: testcase 6-7 fails invariant with clang 3.8+ (bug 208703)";
#endif
	FUNC2(6, 1.0, NAN);
	FUNC2(7, INFINITY, NAN);
	comment = NULL;
	FUNC2(8, INFINITY, 1.0);
	FUNC2(9, -3.0, -INFINITY);
	FUNC2(10, 3.0, -INFINITY);
#ifdef affected_by_bug_208703
	comment = "# TODO: testcase 11-12 fails invariant with clang 3.8+ (bug 208703)";
#endif
	FUNC2(11, NAN, NAN);

	/* This test isn't strictly required to work by C99. */
	FUNC2(12, 0.0, -0.0);
	comment = NULL;

	return (0);
}
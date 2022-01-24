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
struct test_fixture {int /*<<< orphan*/ * fini; int /*<<< orphan*/  init; } ;
struct ptunit_suite {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  cfix_init ; 
 int /*<<< orphan*/  cifix_init ; 
 int /*<<< orphan*/  fill ; 
 int /*<<< orphan*/  fill_nomap ; 
 int /*<<< orphan*/  fill_null ; 
 int /*<<< orphan*/  fini_null ; 
 int /*<<< orphan*/  ifix_init ; 
 int /*<<< orphan*/  init_null ; 
 int /*<<< orphan*/  invalidate ; 
 int /*<<< orphan*/  invalidate_null ; 
 int /*<<< orphan*/  FUNC0 (struct ptunit_suite,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ptunit_suite,int /*<<< orphan*/ ,struct test_fixture) ; 
 struct ptunit_suite FUNC2 (int,char**) ; 
 int FUNC3 (struct ptunit_suite*) ; 
 int /*<<< orphan*/  read ; 
 int /*<<< orphan*/  read_nomap ; 
 int /*<<< orphan*/  read_null ; 
 int /*<<< orphan*/  sfix_init ; 

int FUNC4(int argc, char **argv)
{
	struct ptunit_suite suite;
	struct test_fixture sfix, ifix, cfix, cifix;

	sfix.init = sfix_init;
	sfix.fini = NULL;

	ifix.init = ifix_init;
	ifix.fini = NULL;

	cfix.init = cfix_init;
	cfix.fini = NULL;

	cifix.init = cifix_init;
	cifix.fini = NULL;

	suite = FUNC2(argc, argv);

	FUNC0(suite, init_null);
	FUNC0(suite, fini_null);
	FUNC0(suite, invalidate_null);
	FUNC0(suite, read_null);
	FUNC0(suite, fill_null);

	FUNC1(suite, invalidate, sfix);
	FUNC1(suite, invalidate, cfix);

	FUNC1(suite, read_nomap, sfix);
	FUNC1(suite, read_nomap, ifix);
	FUNC1(suite, read_nomap, cfix);
	FUNC1(suite, read, cifix);

	FUNC1(suite, fill_nomap, sfix);
	FUNC1(suite, fill_nomap, cfix);
	FUNC1(suite, fill, ifix);
	FUNC1(suite, fill, cifix);

	return FUNC3(&suite);
}
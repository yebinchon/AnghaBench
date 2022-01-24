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
struct time_fixture {int /*<<< orphan*/ * fini; int /*<<< orphan*/  init; } ;
struct ptunit_suite {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  cbr ; 
 int /*<<< orphan*/  cbr_null ; 
 int /*<<< orphan*/  cbr_zero ; 
 int /*<<< orphan*/  cyc ; 
 int /*<<< orphan*/  cyc_null ; 
 int /*<<< orphan*/  mtc ; 
 int /*<<< orphan*/  mtc_null ; 
 int /*<<< orphan*/  FUNC0 (struct ptunit_suite,int /*<<< orphan*/ ,struct time_fixture) ; 
 struct ptunit_suite FUNC1 (int,char**) ; 
 int FUNC2 (struct ptunit_suite*) ; 
 int /*<<< orphan*/  query_cbr_none ; 
 int /*<<< orphan*/  query_cbr_null ; 
 int /*<<< orphan*/  query_tsc_none ; 
 int /*<<< orphan*/  query_tsc_null ; 
 int /*<<< orphan*/  tcal_cbr_null ; 
 int /*<<< orphan*/  tcal_cbr_zero ; 
 int /*<<< orphan*/  tcal_cyc_null ; 
 int /*<<< orphan*/  tcal_mtc_null ; 
 int /*<<< orphan*/  tfix_init ; 
 int /*<<< orphan*/  tma ; 
 int /*<<< orphan*/  tma_null ; 
 int /*<<< orphan*/  tsc ; 
 int /*<<< orphan*/  tsc_null ; 

int FUNC3(int argc, char **argv)
{
	struct ptunit_suite suite;
	struct time_fixture tfix;

	suite = FUNC1(argc, argv);

	tfix.init = tfix_init;
	tfix.fini = NULL;

	FUNC0(suite, tsc_null, tfix);
	FUNC0(suite, cbr_null, tfix);
	FUNC0(suite, tma_null, tfix);
	FUNC0(suite, mtc_null, tfix);
	FUNC0(suite, cyc_null, tfix);

	FUNC0(suite, query_tsc_null, tfix);
	FUNC0(suite, query_tsc_none, tfix);
	FUNC0(suite, query_cbr_null, tfix);
	FUNC0(suite, query_cbr_none, tfix);

	FUNC0(suite, tcal_cbr_null, tfix);
	FUNC0(suite, tcal_cbr_zero, tfix);
	FUNC0(suite, tcal_mtc_null, tfix);
	FUNC0(suite, tcal_cyc_null, tfix);

	FUNC0(suite, tsc, tfix);
	FUNC0(suite, cbr, tfix);
	FUNC0(suite, cbr_zero, tfix);
	FUNC0(suite, tma, tfix);
	FUNC0(suite, mtc, tfix);
	FUNC0(suite, cyc, tfix);

	/* The bulk is covered in ptt tests. */

	return FUNC2(&suite);
}
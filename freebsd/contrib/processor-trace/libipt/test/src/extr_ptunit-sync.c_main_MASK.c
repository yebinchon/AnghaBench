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
struct sync_fixture {int /*<<< orphan*/ * fini; int /*<<< orphan*/  init; } ;
struct ptunit_suite {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ptunit_suite,int /*<<< orphan*/ ,struct sync_fixture) ; 
 struct ptunit_suite FUNC1 (int,char**) ; 
 int FUNC2 (struct ptunit_suite*) ; 
 int /*<<< orphan*/  sfix_init ; 
 int /*<<< orphan*/  sync_bwd ; 
 int /*<<< orphan*/  sync_bwd_cutoff ; 
 int /*<<< orphan*/  sync_bwd_empty ; 
 int /*<<< orphan*/  sync_bwd_here ; 
 int /*<<< orphan*/  sync_bwd_none ; 
 int /*<<< orphan*/  sync_bwd_null ; 
 int /*<<< orphan*/  sync_bwd_past ; 
 int /*<<< orphan*/  sync_fwd ; 
 int /*<<< orphan*/  sync_fwd_cutoff ; 
 int /*<<< orphan*/  sync_fwd_empty ; 
 int /*<<< orphan*/  sync_fwd_here ; 
 int /*<<< orphan*/  sync_fwd_none ; 
 int /*<<< orphan*/  sync_fwd_null ; 
 int /*<<< orphan*/  sync_fwd_past ; 

int FUNC3(int argc, char **argv)
{
	struct sync_fixture sfix;
	struct ptunit_suite suite;

	sfix.init = sfix_init;
	sfix.fini = NULL;

	suite = FUNC1(argc, argv);

	FUNC0(suite, sync_fwd_null, sfix);
	FUNC0(suite, sync_bwd_null, sfix);

	FUNC0(suite, sync_fwd_empty, sfix);
	FUNC0(suite, sync_bwd_empty, sfix);

	FUNC0(suite, sync_fwd_none, sfix);
	FUNC0(suite, sync_bwd_none, sfix);

	FUNC0(suite, sync_fwd_here, sfix);
	FUNC0(suite, sync_bwd_here, sfix);

	FUNC0(suite, sync_fwd, sfix);
	FUNC0(suite, sync_bwd, sfix);

	FUNC0(suite, sync_fwd_past, sfix);
	FUNC0(suite, sync_bwd_past, sfix);

	FUNC0(suite, sync_fwd_cutoff, sfix);
	FUNC0(suite, sync_bwd_cutoff, sfix);

	return FUNC2(&suite);
}
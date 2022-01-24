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
struct ptunit_suite {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  init ; 
 int /*<<< orphan*/  init_null ; 
 int /*<<< orphan*/  is_empty_initial ; 
 int /*<<< orphan*/  is_empty_no ; 
 int /*<<< orphan*/  is_empty_null ; 
 int /*<<< orphan*/  is_empty_yes ; 
 int /*<<< orphan*/  FUNC0 (struct ptunit_suite,int /*<<< orphan*/ ) ; 
 struct ptunit_suite FUNC1 (int,char**) ; 
 int FUNC2 (struct ptunit_suite*) ; 
 int /*<<< orphan*/  query_empty ; 
 int /*<<< orphan*/  query_not_taken ; 
 int /*<<< orphan*/  query_null ; 
 int /*<<< orphan*/  query_taken ; 
 int /*<<< orphan*/  update_tnt ; 
 int /*<<< orphan*/  update_tnt_not_empty ; 
 int /*<<< orphan*/  update_tnt_null_packet ; 
 int /*<<< orphan*/  update_tnt_null_tnt ; 

int FUNC3(int argc, char **argv)
{
	struct ptunit_suite suite;

	suite = FUNC1(argc, argv);

	FUNC0(suite, init);
	FUNC0(suite, init_null);
	FUNC0(suite, is_empty_initial);
	FUNC0(suite, is_empty_no);
	FUNC0(suite, is_empty_yes);
	FUNC0(suite, is_empty_null);
	FUNC0(suite, query_taken);
	FUNC0(suite, query_not_taken);
	FUNC0(suite, query_empty);
	FUNC0(suite, query_null);
	FUNC0(suite, update_tnt);
	FUNC0(suite, update_tnt_not_empty);
	FUNC0(suite, update_tnt_null_tnt);
	FUNC0(suite, update_tnt_null_packet);

	return FUNC2(&suite);
}
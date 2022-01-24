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
 int /*<<< orphan*/  from_user ; 
 int /*<<< orphan*/  from_user_big ; 
 int /*<<< orphan*/  from_user_cr3 ; 
 int /*<<< orphan*/  from_user_default ; 
 int /*<<< orphan*/  from_user_null ; 
 int /*<<< orphan*/  from_user_small ; 
 int /*<<< orphan*/  match ; 
 int /*<<< orphan*/  match_cr3 ; 
 int /*<<< orphan*/  match_cr3_false ; 
 int /*<<< orphan*/  match_default ; 
 int /*<<< orphan*/  match_default_mixed ; 
 int /*<<< orphan*/  match_null ; 
 int /*<<< orphan*/  match_vmcs ; 
 int /*<<< orphan*/  match_vmcs_false ; 
 int /*<<< orphan*/  FUNC0 (struct ptunit_suite,int /*<<< orphan*/ ) ; 
 struct ptunit_suite FUNC1 (int,char**) ; 
 int FUNC2 (struct ptunit_suite*) ; 
 int /*<<< orphan*/  to_user ; 
 int /*<<< orphan*/  to_user_big ; 
 int /*<<< orphan*/  to_user_cr3 ; 
 int /*<<< orphan*/  to_user_null ; 
 int /*<<< orphan*/  to_user_small ; 
 int /*<<< orphan*/  to_user_too_small ; 

int FUNC3(int argc, char **argv)
{
	struct ptunit_suite suite;

	suite = FUNC1(argc, argv);

	FUNC0(suite, from_user_null);
	FUNC0(suite, from_user_default);
	FUNC0(suite, from_user_small);
	FUNC0(suite, from_user_big);
	FUNC0(suite, from_user);
	FUNC0(suite, from_user_cr3);

	FUNC0(suite, to_user_null);
	FUNC0(suite, to_user_too_small);
	FUNC0(suite, to_user_small);
	FUNC0(suite, to_user_big);
	FUNC0(suite, to_user);
	FUNC0(suite, to_user_cr3);

	FUNC0(suite, match_null);
	FUNC0(suite, match_default);
	FUNC0(suite, match_default_mixed);
	FUNC0(suite, match_cr3);
	FUNC0(suite, match_vmcs);
	FUNC0(suite, match);
	FUNC0(suite, match_cr3_false);
	FUNC0(suite, match_vmcs_false);

	return FUNC2(&suite);
}
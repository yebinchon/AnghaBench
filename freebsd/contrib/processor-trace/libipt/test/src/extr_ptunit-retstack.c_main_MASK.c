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
 int /*<<< orphan*/  full ; 
 int /*<<< orphan*/  init ; 
 int /*<<< orphan*/  init_null ; 
 int /*<<< orphan*/  overflow ; 
 int /*<<< orphan*/  pop ; 
 int /*<<< orphan*/  pop_empty ; 
 int /*<<< orphan*/  pop_null ; 
 int /*<<< orphan*/  FUNC0 (struct ptunit_suite,int /*<<< orphan*/ ) ; 
 struct ptunit_suite FUNC1 (int,char**) ; 
 int FUNC2 (struct ptunit_suite*) ; 
 int /*<<< orphan*/  query ; 
 int /*<<< orphan*/  query_empty ; 
 int /*<<< orphan*/  query_null ; 

int FUNC3(int argc, char **argv)
{
	struct ptunit_suite suite;

	suite = FUNC1(argc, argv);

	FUNC0(suite, init);
	FUNC0(suite, init_null);
	FUNC0(suite, query);
	FUNC0(suite, query_empty);
	FUNC0(suite, query_null);
	FUNC0(suite, pop);
	FUNC0(suite, pop_empty);
	FUNC0(suite, pop_null);
	FUNC0(suite, full);
	FUNC0(suite, overflow);

	return FUNC2(&suite);
}
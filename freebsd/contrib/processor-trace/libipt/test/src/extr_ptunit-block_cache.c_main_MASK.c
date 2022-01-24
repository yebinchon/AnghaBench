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
struct bcache_fixture {void* fini; int /*<<< orphan*/  init; } ;

/* Variables and functions */
 int /*<<< orphan*/  add ; 
 int /*<<< orphan*/  add_bad_index ; 
 int /*<<< orphan*/  add_null ; 
 int /*<<< orphan*/  alloc ; 
 int /*<<< orphan*/  alloc_min ; 
 int /*<<< orphan*/  alloc_too_big ; 
 int /*<<< orphan*/  alloc_zero ; 
 int /*<<< orphan*/  bcache_entry_size ; 
 int /*<<< orphan*/  bcache_size ; 
 void* bfix_fini ; 
 int /*<<< orphan*/  bfix_init ; 
 unsigned long long bfix_nentries ; 
 int /*<<< orphan*/  cfix_init ; 
 int /*<<< orphan*/  free_null ; 
 int /*<<< orphan*/  initially_empty ; 
 int /*<<< orphan*/  lookup_bad_index ; 
 int /*<<< orphan*/  lookup_null ; 
 int /*<<< orphan*/  FUNC0 (struct ptunit_suite,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ptunit_suite,int /*<<< orphan*/ ,struct bcache_fixture) ; 
 int /*<<< orphan*/  FUNC2 (struct ptunit_suite,int /*<<< orphan*/ ,struct bcache_fixture,unsigned long long) ; 
 struct ptunit_suite FUNC3 (int,char**) ; 
 int FUNC4 (struct ptunit_suite*) ; 
 int /*<<< orphan*/  stress ; 

int FUNC5(int argc, char **argv)
{
	struct bcache_fixture bfix, cfix;
	struct ptunit_suite suite;

	bfix.init = bfix_init;
	bfix.fini = bfix_fini;

	cfix.init = cfix_init;
	cfix.fini = bfix_fini;

	suite = FUNC3(argc, argv);

	FUNC0(suite, bcache_entry_size);
	FUNC0(suite, bcache_size);

	FUNC0(suite, free_null);
	FUNC0(suite, add_null);
	FUNC0(suite, lookup_null);

	FUNC1(suite, alloc, cfix);
	FUNC1(suite, alloc_min, cfix);
	FUNC1(suite, alloc_too_big, cfix);
	FUNC1(suite, alloc_zero, cfix);

	FUNC1(suite, initially_empty, bfix);

	FUNC1(suite, add_bad_index, bfix);
	FUNC1(suite, lookup_bad_index, bfix);

	FUNC2(suite, add, bfix, 0ull);
	FUNC2(suite, add, bfix, bfix_nentries - 1ull);
	FUNC1(suite, stress, bfix);

	return FUNC4(&suite);
}
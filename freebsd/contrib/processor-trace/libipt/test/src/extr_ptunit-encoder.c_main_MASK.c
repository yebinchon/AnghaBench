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
 int /*<<< orphan*/  alloc_encoder_null ; 
 int /*<<< orphan*/  encoder_fini_null ; 
 int /*<<< orphan*/  encoder_init_null ; 
 int /*<<< orphan*/  free_encoder_null ; 
 int /*<<< orphan*/  get_config ; 
 int /*<<< orphan*/  get_config_null ; 
 int /*<<< orphan*/  get_offset_init ; 
 int /*<<< orphan*/  get_offset_null ; 
 int /*<<< orphan*/  next_null ; 
 int /*<<< orphan*/  FUNC0 (struct ptunit_suite,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ptunit_suite,int /*<<< orphan*/ ,struct test_fixture) ; 
 struct ptunit_suite FUNC2 (int,char**) ; 
 int FUNC3 (struct ptunit_suite*) ; 
 int /*<<< orphan*/  sync_set_eos ; 
 int /*<<< orphan*/  sync_set_get_offset ; 
 int /*<<< orphan*/  sync_set_null ; 
 int /*<<< orphan*/  tfix_init ; 

int FUNC4(int argc, char **argv)
{
	struct test_fixture tfix;
	struct ptunit_suite suite;

	tfix.init = tfix_init;
	tfix.fini = NULL;

	suite = FUNC2(argc, argv);

	FUNC0(suite, encoder_init_null);
	FUNC0(suite, encoder_fini_null);
	FUNC0(suite, alloc_encoder_null);
	FUNC0(suite, free_encoder_null);

	FUNC0(suite, sync_set_null);
	FUNC1(suite, sync_set_eos, tfix);

	FUNC0(suite, get_offset_null);
	FUNC1(suite, get_offset_init, tfix);
	FUNC1(suite, sync_set_get_offset, tfix);

	FUNC0(suite, get_config_null);
	FUNC1(suite, get_config, tfix);

	FUNC0(suite, next_null);

	return FUNC3(&suite);
}
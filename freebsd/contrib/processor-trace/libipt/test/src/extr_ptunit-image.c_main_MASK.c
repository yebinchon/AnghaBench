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
struct image_fixture {void* fini; int /*<<< orphan*/ * init; } ;

/* Variables and functions */
 int /*<<< orphan*/  add_cached ; 
 int /*<<< orphan*/  add_cached_bad_isid ; 
 int /*<<< orphan*/  add_cached_null ; 
 int /*<<< orphan*/  add_cached_null_asid ; 
 int /*<<< orphan*/  add_cached_twice ; 
 int /*<<< orphan*/  adjacent ; 
 int /*<<< orphan*/  contained ; 
 int /*<<< orphan*/  contained_back ; 
 int /*<<< orphan*/  contained_multiple ; 
 int /*<<< orphan*/  copy ; 
 int /*<<< orphan*/  copy_empty ; 
 int /*<<< orphan*/  copy_merge ; 
 int /*<<< orphan*/  copy_overlap ; 
 int /*<<< orphan*/  copy_replace ; 
 int /*<<< orphan*/  copy_self ; 
 int /*<<< orphan*/  copy_shrink ; 
 int /*<<< orphan*/  copy_split ; 
 void* dfix_fini ; 
 int /*<<< orphan*/  find ; 
 int /*<<< orphan*/  find_asid ; 
 int /*<<< orphan*/  find_bad_asid ; 
 int /*<<< orphan*/  find_nomem ; 
 int /*<<< orphan*/  find_null ; 
 int /*<<< orphan*/  fini ; 
 int /*<<< orphan*/  fini_empty ; 
 int /*<<< orphan*/  fini_null ; 
 void* ifix_fini ; 
 int /*<<< orphan*/ * ifix_init ; 
 int /*<<< orphan*/  init ; 
 int /*<<< orphan*/  init_name ; 
 int /*<<< orphan*/  init_null ; 
 int /*<<< orphan*/  name ; 
 int /*<<< orphan*/  name_none ; 
 int /*<<< orphan*/  name_null ; 
 int /*<<< orphan*/  overlap_back ; 
 int /*<<< orphan*/  overlap_front ; 
 int /*<<< orphan*/  overlap_mid ; 
 int /*<<< orphan*/  overlap_multiple ; 
 int /*<<< orphan*/  FUNC0 (struct ptunit_suite,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ptunit_suite,int /*<<< orphan*/ ,struct image_fixture) ; 
 struct ptunit_suite FUNC2 (int,char**) ; 
 int FUNC3 (struct ptunit_suite*) ; 
 int /*<<< orphan*/  read ; 
 int /*<<< orphan*/  read_asid ; 
 int /*<<< orphan*/  read_bad_asid ; 
 int /*<<< orphan*/  read_callback ; 
 int /*<<< orphan*/  read_empty ; 
 int /*<<< orphan*/  read_error ; 
 int /*<<< orphan*/  read_nomem ; 
 int /*<<< orphan*/  read_null ; 
 int /*<<< orphan*/  read_null_asid ; 
 int /*<<< orphan*/  read_spurious_error ; 
 int /*<<< orphan*/  read_truncated ; 
 int /*<<< orphan*/  remove_all_by_filename ; 
 int /*<<< orphan*/  remove_bad_asid ; 
 int /*<<< orphan*/  remove_bad_vaddr ; 
 int /*<<< orphan*/  remove_by_asid ; 
 int /*<<< orphan*/  remove_by_filename ; 
 int /*<<< orphan*/  remove_by_filename_bad_asid ; 
 int /*<<< orphan*/  remove_none_by_filename ; 
 int /*<<< orphan*/  remove_section ; 
 int /*<<< orphan*/ * rfix_init ; 
 int /*<<< orphan*/  same ; 
 int /*<<< orphan*/  same_different_isid ; 
 int /*<<< orphan*/  same_different_offset ; 
 int /*<<< orphan*/  validate ; 
 int /*<<< orphan*/  validate_bad_asid ; 
 int /*<<< orphan*/  validate_bad_isid ; 
 int /*<<< orphan*/  validate_bad_offset ; 
 int /*<<< orphan*/  validate_bad_size ; 
 int /*<<< orphan*/  validate_bad_vaddr ; 
 int /*<<< orphan*/  validate_null ; 

int FUNC4(int argc, char **argv)
{
	struct image_fixture dfix, ifix, rfix;
	struct ptunit_suite suite;

	/* Dfix provides image destruction. */
	dfix.init = NULL;
	dfix.fini = dfix_fini;

	/* Ifix provides an empty image. */
	ifix.init = ifix_init;
	ifix.fini = ifix_fini;

	/* Rfix provides an image with two sections added. */
	rfix.init = rfix_init;
	rfix.fini = ifix_fini;

	suite = FUNC2(argc, argv);

	FUNC0(suite, init);
	FUNC1(suite, init_name, dfix);
	FUNC0(suite, init_null);

	FUNC0(suite, fini);
	FUNC0(suite, fini_empty);
	FUNC0(suite, fini_null);

	FUNC1(suite, name, dfix);
	FUNC0(suite, name_none);
	FUNC0(suite, name_null);

	FUNC1(suite, read_empty, ifix);
	FUNC1(suite, overlap_front, ifix);
	FUNC1(suite, overlap_back, ifix);
	FUNC1(suite, overlap_multiple, ifix);
	FUNC1(suite, overlap_mid, ifix);
	FUNC1(suite, contained, ifix);
	FUNC1(suite, contained_multiple, ifix);
	FUNC1(suite, contained_back, ifix);
	FUNC1(suite, same, ifix);
	FUNC1(suite, same_different_isid, ifix);
	FUNC1(suite, same_different_offset, ifix);
	FUNC1(suite, adjacent, ifix);

	FUNC1(suite, read_null, rfix);
	FUNC1(suite, read, rfix);
	FUNC1(suite, read_null, rfix);
	FUNC1(suite, read_asid, ifix);
	FUNC1(suite, read_bad_asid, rfix);
	FUNC1(suite, read_null_asid, rfix);
	FUNC1(suite, read_callback, rfix);
	FUNC1(suite, read_nomem, rfix);
	FUNC1(suite, read_truncated, rfix);
	FUNC1(suite, read_error, rfix);
	FUNC1(suite, read_spurious_error, rfix);

	FUNC1(suite, remove_section, rfix);
	FUNC1(suite, remove_bad_vaddr, rfix);
	FUNC1(suite, remove_bad_asid, rfix);
	FUNC1(suite, remove_by_filename, rfix);
	FUNC1(suite, remove_by_filename_bad_asid, rfix);
	FUNC1(suite, remove_none_by_filename, rfix);
	FUNC1(suite, remove_all_by_filename, ifix);
	FUNC1(suite, remove_by_asid, rfix);

	FUNC1(suite, copy_empty, ifix);
	FUNC1(suite, copy, rfix);
	FUNC1(suite, copy_self, rfix);
	FUNC1(suite, copy_shrink, rfix);
	FUNC1(suite, copy_split, ifix);
	FUNC1(suite, copy_merge, ifix);
	FUNC1(suite, copy_overlap, ifix);
	FUNC1(suite, copy_replace, ifix);

	FUNC0(suite, add_cached_null);
	FUNC1(suite, add_cached, ifix);
	FUNC1(suite, add_cached_null_asid, ifix);
	FUNC1(suite, add_cached_twice, ifix);
	FUNC1(suite, add_cached_bad_isid, ifix);

	FUNC1(suite, find_null, rfix);
	FUNC1(suite, find, rfix);
	FUNC1(suite, find_asid, ifix);
	FUNC1(suite, find_bad_asid, rfix);
	FUNC1(suite, find_nomem, rfix);

	FUNC1(suite, validate_null, rfix);
	FUNC1(suite, validate, rfix);
	FUNC1(suite, validate_bad_asid, rfix);
	FUNC1(suite, validate_bad_vaddr, rfix);
	FUNC1(suite, validate_bad_offset, rfix);
	FUNC1(suite, validate_bad_size, rfix);
	FUNC1(suite, validate_bad_isid, rfix);

	return FUNC3(&suite);
}
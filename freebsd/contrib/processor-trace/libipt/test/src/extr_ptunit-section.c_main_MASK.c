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
struct section_fixture {int /*<<< orphan*/  fini; int /*<<< orphan*/  init; } ;
struct ptunit_suite {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  attach_bad_iscache ; 
 int /*<<< orphan*/  attach_bad_map ; 
 int /*<<< orphan*/  attach_bad_ucount ; 
 int /*<<< orphan*/  attach_detach ; 
 int /*<<< orphan*/  attach_map ; 
 int /*<<< orphan*/  attach_map_overflow ; 
 int /*<<< orphan*/  attach_null ; 
 int /*<<< orphan*/  attach_overflow ; 
 int /*<<< orphan*/  bcache_alloc_free ; 
 int /*<<< orphan*/  bcache_alloc_nomap ; 
 int /*<<< orphan*/  bcache_alloc_twice ; 
 int /*<<< orphan*/  cache_null ; 
 int /*<<< orphan*/  create ; 
 int /*<<< orphan*/  create_bad_offset ; 
 int /*<<< orphan*/  create_empty ; 
 int /*<<< orphan*/  create_truncated ; 
 int /*<<< orphan*/  detach_bad_iscache ; 
 int /*<<< orphan*/  detach_null ; 
 int /*<<< orphan*/  filename_null ; 
 int /*<<< orphan*/  get_null ; 
 int /*<<< orphan*/  get_overflow ; 
 int /*<<< orphan*/  get_put ; 
 int /*<<< orphan*/  init_no_bcache ; 
 int /*<<< orphan*/  map_change ; 
 int /*<<< orphan*/  map_null ; 
 int /*<<< orphan*/  map_overflow ; 
 int /*<<< orphan*/  map_put ; 
 int /*<<< orphan*/  map_unmap ; 
 int /*<<< orphan*/  memsize_map_bcache ; 
 int /*<<< orphan*/  memsize_map_nobcache ; 
 int /*<<< orphan*/  memsize_nomap ; 
 int /*<<< orphan*/  memsize_null ; 
 int /*<<< orphan*/  memsize_unmap ; 
 int /*<<< orphan*/  offset_null ; 
 int /*<<< orphan*/  FUNC0 (struct ptunit_suite,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ptunit_suite,int /*<<< orphan*/ ,struct section_fixture) ; 
 int /*<<< orphan*/  FUNC2 (struct ptunit_suite,int /*<<< orphan*/ ,struct section_fixture,int /*<<< orphan*/ ) ; 
 struct ptunit_suite FUNC3 (int,char**) ; 
 int FUNC4 (struct ptunit_suite*) ; 
 int /*<<< orphan*/  put_null ; 
 int /*<<< orphan*/  read ; 
 int /*<<< orphan*/  read_from_truncated ; 
 int /*<<< orphan*/  read_nomap ; 
 int /*<<< orphan*/  read_nomem ; 
 int /*<<< orphan*/  read_null ; 
 int /*<<< orphan*/  read_offset ; 
 int /*<<< orphan*/  read_overflow ; 
 int /*<<< orphan*/  read_overflow_32bit ; 
 int /*<<< orphan*/  read_truncated ; 
 int /*<<< orphan*/  read_unmap_map ; 
 int /*<<< orphan*/  sfix_fini ; 
 int /*<<< orphan*/  sfix_init ; 
 int /*<<< orphan*/  size_null ; 
 int /*<<< orphan*/  stress ; 
 int /*<<< orphan*/  unmap_nomap ; 
 int /*<<< orphan*/  unmap_null ; 
 int /*<<< orphan*/  worker_bcache ; 
 int /*<<< orphan*/  worker_read ; 

int FUNC5(int argc, char **argv)
{
	struct section_fixture sfix;
	struct ptunit_suite suite;

	sfix.init = sfix_init;
	sfix.fini = sfix_fini;

	suite = FUNC3(argc, argv);

	FUNC1(suite, create, sfix);
	FUNC1(suite, create_bad_offset, sfix);
	FUNC1(suite, create_truncated, sfix);
	FUNC1(suite, create_empty, sfix);

	FUNC0(suite, filename_null);
	FUNC0(suite, offset_null);
	FUNC0(suite, size_null);
	FUNC0(suite, get_null);
	FUNC0(suite, put_null);
	FUNC0(suite, attach_null);
	FUNC0(suite, detach_null);
	FUNC0(suite, map_null);
	FUNC0(suite, unmap_null);
	FUNC0(suite, cache_null);

	FUNC1(suite, get_overflow, sfix);
	FUNC1(suite, attach_overflow, sfix);
	FUNC1(suite, attach_bad_ucount, sfix);
	FUNC1(suite, map_change, sfix);
	FUNC1(suite, map_put, sfix);
	FUNC1(suite, unmap_nomap, sfix);
	FUNC1(suite, map_overflow, sfix);
	FUNC1(suite, get_put, sfix);
	FUNC1(suite, attach_detach, sfix);
	FUNC1(suite, attach_bad_iscache, sfix);
	FUNC1(suite, detach_bad_iscache, sfix);
	FUNC1(suite, map_unmap, sfix);
	FUNC1(suite, attach_map, sfix);
	FUNC1(suite, attach_bad_map, sfix);
	FUNC1(suite, attach_map_overflow, sfix);
	FUNC1(suite, read, sfix);
	FUNC1(suite, read_null, sfix);
	FUNC1(suite, read_offset, sfix);
	FUNC1(suite, read_truncated, sfix);
	FUNC1(suite, read_from_truncated, sfix);
	FUNC1(suite, read_nomem, sfix);
	FUNC1(suite, read_overflow, sfix);
	FUNC1(suite, read_overflow_32bit, sfix);
	FUNC1(suite, read_nomap, sfix);
	FUNC1(suite, read_unmap_map, sfix);

	FUNC1(suite, init_no_bcache, sfix);
	FUNC1(suite, bcache_alloc_free, sfix);
	FUNC1(suite, bcache_alloc_twice, sfix);
	FUNC1(suite, bcache_alloc_nomap, sfix);

	FUNC1(suite, memsize_null, sfix);
	FUNC1(suite, memsize_nomap, sfix);
	FUNC1(suite, memsize_unmap, sfix);
	FUNC1(suite, memsize_map_nobcache, sfix);
	FUNC1(suite, memsize_map_bcache, sfix);

	FUNC2(suite, stress, sfix, worker_bcache);
	FUNC2(suite, stress, sfix, worker_read);

	return FUNC4(&suite);
}
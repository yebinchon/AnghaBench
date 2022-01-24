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
struct iscache_fixture {void* fini; int /*<<< orphan*/  init; } ;

/* Variables and functions */
 int /*<<< orphan*/  add ; 
 int /*<<< orphan*/  add_different_same_laddr ; 
 int /*<<< orphan*/  add_file ; 
 int /*<<< orphan*/  add_file_different_same_laddr ; 
 int /*<<< orphan*/  add_file_null ; 
 int /*<<< orphan*/  add_file_same ; 
 int /*<<< orphan*/  add_file_same_different_laddr ; 
 int /*<<< orphan*/  add_no_name ; 
 int /*<<< orphan*/  add_null ; 
 int /*<<< orphan*/  add_same ; 
 int /*<<< orphan*/  add_same_different_laddr ; 
 int /*<<< orphan*/  add_twice ; 
 int /*<<< orphan*/  add_twice_different_laddr ; 
 void* cfix_fini ; 
 int /*<<< orphan*/  cfix_init ; 
 int /*<<< orphan*/  clear_empty ; 
 int /*<<< orphan*/  clear_find ; 
 int /*<<< orphan*/  clear_lookup ; 
 int /*<<< orphan*/  clear_null ; 
 int /*<<< orphan*/  dfix_init ; 
 int /*<<< orphan*/  find ; 
 int /*<<< orphan*/  find_bad_filename ; 
 int /*<<< orphan*/  find_bad_laddr ; 
 int /*<<< orphan*/  find_bad_offset ; 
 int /*<<< orphan*/  find_bad_size ; 
 int /*<<< orphan*/  find_empty ; 
 int /*<<< orphan*/  find_null ; 
 int /*<<< orphan*/  find_null_filename ; 
 int /*<<< orphan*/  fini_null ; 
 int /*<<< orphan*/  free_null ; 
 int /*<<< orphan*/  init_fini ; 
 int /*<<< orphan*/  init_null ; 
 int /*<<< orphan*/  lookup ; 
 int /*<<< orphan*/  lookup_bad_isid ; 
 int /*<<< orphan*/  lookup_null ; 
 int /*<<< orphan*/  lru_bcache_clear ; 
 int /*<<< orphan*/  lru_bcache_evict ; 
 int /*<<< orphan*/  lru_clear ; 
 int /*<<< orphan*/  lru_limit_evict ; 
 int /*<<< orphan*/  lru_map ; 
 int /*<<< orphan*/  lru_map_add_front ; 
 int /*<<< orphan*/  lru_map_evict ; 
 int /*<<< orphan*/  lru_map_move_front ; 
 int /*<<< orphan*/  lru_map_nodup ; 
 int /*<<< orphan*/  lru_map_too_big ; 
 int /*<<< orphan*/  lru_read ; 
 int /*<<< orphan*/  name ; 
 int /*<<< orphan*/  name_none ; 
 int /*<<< orphan*/  name_null ; 
 int /*<<< orphan*/  FUNC0 (struct ptunit_suite,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ptunit_suite,int /*<<< orphan*/ ,struct iscache_fixture) ; 
 int /*<<< orphan*/  FUNC2 (struct ptunit_suite,int /*<<< orphan*/ ,struct iscache_fixture,int /*<<< orphan*/ ) ; 
 struct ptunit_suite FUNC3 (int,char**) ; 
 int FUNC4 (struct ptunit_suite*) ; 
 int /*<<< orphan*/  read ; 
 int /*<<< orphan*/  read_bad_isid ; 
 int /*<<< orphan*/  read_bad_vaddr ; 
 int /*<<< orphan*/  read_null ; 
 int /*<<< orphan*/  read_truncate ; 
 int /*<<< orphan*/  sfix_init ; 
 int /*<<< orphan*/  stress ; 
 int /*<<< orphan*/  worker_add ; 
 int /*<<< orphan*/  worker_add_clear ; 
 int /*<<< orphan*/  worker_add_file ; 
 int /*<<< orphan*/  worker_add_file_clear ; 
 int /*<<< orphan*/  worker_add_file_map ; 
 int /*<<< orphan*/  worker_add_map ; 
 int /*<<< orphan*/  worker_map ; 
 int /*<<< orphan*/  worker_map_bcache ; 
 int /*<<< orphan*/  worker_map_limit ; 

int FUNC5(int argc, char **argv)
{
	struct iscache_fixture cfix, dfix, sfix;
	struct ptunit_suite suite;

	cfix.init = cfix_init;
	cfix.fini = cfix_fini;

	dfix.init = dfix_init;
	dfix.fini = cfix_fini;

	sfix.init = sfix_init;
	sfix.fini = cfix_fini;

	suite = FUNC3(argc, argv);

	FUNC0(suite, init_null);
	FUNC0(suite, fini_null);
	FUNC0(suite, name_null);
	FUNC0(suite, add_null);
	FUNC0(suite, find_null);
	FUNC0(suite, lookup_null);
	FUNC0(suite, clear_null);
	FUNC0(suite, free_null);
	FUNC0(suite, add_file_null);
	FUNC0(suite, read_null);

	FUNC1(suite, name, dfix);
	FUNC1(suite, name_none, dfix);

	FUNC1(suite, init_fini, cfix);
	FUNC1(suite, add, cfix);
	FUNC1(suite, add_no_name, cfix);
	FUNC1(suite, add_file, cfix);

	FUNC1(suite, find, cfix);
	FUNC1(suite, find_empty, cfix);
	FUNC1(suite, find_bad_filename, cfix);
	FUNC1(suite, find_null_filename, cfix);
	FUNC1(suite, find_bad_offset, cfix);
	FUNC1(suite, find_bad_size, cfix);
	FUNC1(suite, find_bad_laddr, cfix);

	FUNC1(suite, lookup, cfix);
	FUNC1(suite, lookup_bad_isid, cfix);

	FUNC1(suite, clear_empty, cfix);
	FUNC1(suite, clear_find, cfix);
	FUNC1(suite, clear_lookup, cfix);

	FUNC1(suite, add_twice, cfix);
	FUNC1(suite, add_same, cfix);
	FUNC1(suite, add_twice_different_laddr, cfix);
	FUNC1(suite, add_same_different_laddr, cfix);
	FUNC1(suite, add_different_same_laddr, cfix);

	FUNC1(suite, add_file_same, cfix);
	FUNC1(suite, add_file_same_different_laddr, cfix);
	FUNC1(suite, add_file_different_same_laddr, cfix);

	FUNC1(suite, read, cfix);
	FUNC1(suite, read_truncate, cfix);
	FUNC1(suite, read_bad_vaddr, cfix);
	FUNC1(suite, read_bad_isid, cfix);

	FUNC1(suite, lru_map, cfix);
	FUNC1(suite, lru_read, cfix);
	FUNC1(suite, lru_map_nodup, cfix);
	FUNC1(suite, lru_map_too_big, cfix);
	FUNC1(suite, lru_map_add_front, cfix);
	FUNC1(suite, lru_map_move_front, cfix);
	FUNC1(suite, lru_map_evict, cfix);
	FUNC1(suite, lru_limit_evict, cfix);
	FUNC1(suite, lru_bcache_evict, cfix);
	FUNC1(suite, lru_bcache_clear, cfix);
	FUNC1(suite, lru_clear, cfix);

	FUNC2(suite, stress, cfix, worker_add);
	FUNC2(suite, stress, cfix, worker_add_file);
	FUNC2(suite, stress, sfix, worker_map);
	FUNC2(suite, stress, sfix, worker_map_limit);
	FUNC2(suite, stress, sfix, worker_map_bcache);
	FUNC2(suite, stress, cfix, worker_add_map);
	FUNC2(suite, stress, cfix, worker_add_clear);
	FUNC2(suite, stress, cfix, worker_add_file_map);
	FUNC2(suite, stress, cfix, worker_add_file_clear);

	return FUNC4(&suite);
}
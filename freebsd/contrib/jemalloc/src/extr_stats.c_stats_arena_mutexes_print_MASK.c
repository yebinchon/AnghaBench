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
typedef  size_t mutex_prof_arena_ind_t ;
typedef  int /*<<< orphan*/  emitter_t ;
typedef  int /*<<< orphan*/  emitter_row_t ;
typedef  int /*<<< orphan*/  emitter_col_t ;

/* Variables and functions */
 char** arena_mutex_names ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t mutex_prof_num_arena_mutexes ; 
 int mutex_prof_num_uint32_t_counters ; 
 int mutex_prof_num_uint64_t_counters ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,size_t,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(emitter_t *emitter, unsigned arena_ind) {
	emitter_row_t row;
	emitter_col_t col_name;
	emitter_col_t col64[mutex_prof_num_uint64_t_counters];
	emitter_col_t col32[mutex_prof_num_uint32_t_counters];

	FUNC2(&row);
	FUNC5(&row, "", &col_name, col64, col32);

	FUNC0(emitter, "mutexes");
	FUNC3(emitter, &row);

	for (mutex_prof_arena_ind_t i = 0; i < mutex_prof_num_arena_mutexes;
	    i++) {
		const char *name = arena_mutex_names[i];
		FUNC0(emitter, name);
		FUNC6(arena_ind, i, name, &col_name, col64,
		    col32);
		FUNC4(emitter, &row, col64, col32);
		FUNC1(emitter); /* Close the mutex dict. */
	}
	FUNC1(emitter); /* End "mutexes". */
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {void* instructions; void* first_instructions; void* bases; void* text; } ;
typedef  TYPE_1__ svn_fs_x__reps_t ;
struct TYPE_8__ {int /*<<< orphan*/  idx; int /*<<< orphan*/  fs; } ;
typedef  TYPE_2__ svn_fs_x__reps_baton_t ;
typedef  int /*<<< orphan*/  svn_fs_x__rep_extractor_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,TYPE_1__ const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC3 (TYPE_1__ const*,void const**) ; 

svn_error_t *
FUNC4(void **out,
                        const void *data,
                        apr_size_t data_len,
                        void *baton,
                        apr_pool_t *pool)
{
  svn_fs_x__reps_baton_t *reps_baton = baton;

  /* get a usable reps structure  */
  const svn_fs_x__reps_t *cached = data;
  svn_fs_x__reps_t *reps = FUNC1(pool, cached, sizeof(*reps));

  reps->text
    = FUNC3(cached, (const void **)&cached->text);
  reps->bases
    = FUNC3(cached, (const void **)&cached->bases);
  reps->first_instructions
    = FUNC3(cached,
                                 (const void **)&cached->first_instructions);
  reps->instructions
    = FUNC3(cached,
                                 (const void **)&cached->instructions);

  /* return an extractor for the selected item */
  FUNC0(FUNC2((svn_fs_x__rep_extractor_t **)out,
                             reps_baton->fs, reps, reps_baton->idx, pool));

  return SVN_NO_ERROR;
}
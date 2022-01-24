#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ is_outer_most_lock; int /*<<< orphan*/  baton; int /*<<< orphan*/ * (* body ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;scalar_t__ is_inner_most_lock; scalar_t__ is_global_lock; TYPE_3__* fs; int /*<<< orphan*/  lock_path; int /*<<< orphan*/ * lock_pool; } ;
typedef  TYPE_1__ with_lock_baton_t ;
struct TYPE_9__ {int /*<<< orphan*/  youngest_rev_cache; int /*<<< orphan*/  has_write_lock; } ;
typedef  TYPE_2__ svn_fs_x__data_t ;
struct TYPE_10__ {TYPE_2__* fsap_data; } ;
typedef  TYPE_3__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  apr_pool_cleanup_null ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  reset_lock_flag ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC10(with_lock_baton_t *baton)
{
  apr_pool_t *pool = baton->lock_pool;
  svn_error_t *err = FUNC1(baton->lock_path, pool);

  if (!err)
    {
      svn_fs_t *fs = baton->fs;
      svn_fs_x__data_t *ffd = fs->fsap_data;

      if (baton->is_global_lock)
        {
          /* set the "got the lock" flag and register reset function */
          FUNC0(pool,
                                    ffd,
                                    reset_lock_flag,
                                    apr_pool_cleanup_null);
          ffd->has_write_lock = TRUE;
        }

      if (baton->is_inner_most_lock)
        {
          /* Use a separate sub-pool for the actual function body and a few
           * file accesses. So, the lock-pool only contains the file locks.
           */
          apr_pool_t *subpool = FUNC8(pool);

          /* nobody else will modify the repo state
             => read HEAD & pack info once */
          err = FUNC5(fs, subpool);
          if (!err)
            err = FUNC6(&ffd->youngest_rev_cache, fs,
                                         subpool);

          /* We performed a few file operations. Clean the pool. */
          FUNC7(subpool);

          if (!err)
            err = baton->body(baton->baton, subpool);

          FUNC9(subpool);
        }
      else
        {
          /* Nested lock level */
          err = baton->body(baton->baton, pool);
        }
    }

  if (baton->is_outer_most_lock)
    FUNC9(pool);

  return FUNC4(err);
}
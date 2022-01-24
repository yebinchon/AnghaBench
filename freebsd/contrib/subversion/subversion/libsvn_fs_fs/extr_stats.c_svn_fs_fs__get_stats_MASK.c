#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_fs_progress_notify_func_t ;
typedef  int /*<<< orphan*/  svn_fs_fs__stats_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
struct TYPE_4__ {int /*<<< orphan*/  revisions; } ;
typedef  TYPE_1__ query_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC5(svn_fs_fs__stats_t **stats,
                     svn_fs_t *fs,
                     svn_fs_progress_notify_func_t progress_func,
                     void *progress_baton,
                     svn_cancel_func_t cancel_func,
                     void *cancel_baton,
                     apr_pool_t *result_pool,
                     apr_pool_t *scratch_pool)
{
  query_t *query;

  *stats = FUNC3(result_pool);
  FUNC0(FUNC2(&query, fs, *stats, progress_func, progress_baton,
                       cancel_func, cancel_baton, scratch_pool,
                       scratch_pool));
  FUNC0(FUNC4(query, scratch_pool, scratch_pool));
  FUNC1(query->revisions, *stats);

  return SVN_NO_ERROR;
}
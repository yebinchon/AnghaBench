#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  counter; int /*<<< orphan*/  flush_to_disk; int /*<<< orphan*/  files; } ;
typedef  TYPE_1__ svn_fs_x__batch_fsync_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  apr_pool_cleanup_null ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fsync_batch_cleanup ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC5(svn_fs_x__batch_fsync_t **result_p,
                             svn_boolean_t flush_to_disk,
                             apr_pool_t *result_pool)
{
  svn_fs_x__batch_fsync_t *result = FUNC1(result_pool, sizeof(*result));
  result->files = FUNC3(result_pool);
  result->flush_to_disk = flush_to_disk;

  FUNC0(FUNC4(&result->counter, result_pool));
  FUNC2(result_pool, result, fsync_batch_cleanup,
                            apr_pool_cleanup_null);

  *result_p = result;

  return SVN_NO_ERROR;
}
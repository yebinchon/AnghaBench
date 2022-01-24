#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_fs_progress_notify_func_t ;
typedef  int /*<<< orphan*/  svn_fs_fs__stats_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
typedef  int /*<<< orphan*/  revision_info_t ;
struct TYPE_3__ {void* cancel_baton; int /*<<< orphan*/  cancel_func; void* progress_baton; int /*<<< orphan*/  progress_func; int /*<<< orphan*/ * stats; int /*<<< orphan*/ * fs; void* null_base; scalar_t__ head; int /*<<< orphan*/  revisions; int /*<<< orphan*/  min_unpacked_rev; int /*<<< orphan*/  shard_size; } ;
typedef  TYPE_1__ query_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC6(query_t **query,
             svn_fs_t *fs,
             svn_fs_fs__stats_t *stats,
             svn_fs_progress_notify_func_t progress_func,
             void *progress_baton,
             svn_cancel_func_t cancel_func,
             void *cancel_baton,
             apr_pool_t *result_pool,
             apr_pool_t *scratch_pool)
{
  *query = FUNC2(result_pool, sizeof(**query));

  /* Read repository dimensions. */
  (*query)->shard_size = FUNC4(fs);
  FUNC0(FUNC5(&(*query)->head, fs, scratch_pool));
  FUNC0(FUNC3(&(*query)->min_unpacked_rev, fs,
                                      scratch_pool));

  /* create data containers and caches
   * Note: this assumes that int is at least 32-bits and that we only support
   * 32-bit wide revision numbers (actually 31-bits due to the signedness
   * of both the nelts field of the array and our revision numbers). This
   * means this code will fail on platforms where int is less than 32-bits
   * and the repository has more revisions than int can hold. */
  (*query)->revisions = FUNC1(result_pool, (int) (*query)->head + 1,
                                       sizeof(revision_info_t *));
  (*query)->null_base = FUNC2(result_pool,
                                    sizeof(*(*query)->null_base));

  /* Store other parameters */
  (*query)->fs = fs;
  (*query)->stats = stats;
  (*query)->progress_func = progress_func;
  (*query)->progress_baton = progress_baton;
  (*query)->cancel_func = cancel_func;
  (*query)->cancel_baton = cancel_baton;

  return SVN_NO_ERROR;
}
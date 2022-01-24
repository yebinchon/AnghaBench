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
struct TYPE_8__ {int /*<<< orphan*/  rev; int /*<<< orphan*/  fs; scalar_t__ is_txn_root; } ;
typedef  TYPE_1__ svn_fs_root_t ;
struct TYPE_9__ {int /*<<< orphan*/ * vtable; TYPE_3__* fsap_data; } ;
typedef  TYPE_2__ svn_fs_path_change_iterator_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_10__ {int /*<<< orphan*/  context; int /*<<< orphan*/  changes; void* scratch_pool; } ;
typedef  TYPE_3__ fs_revision_changes_iterator_data_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  rev_changes_iterator_vtable ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  txn_changes_iterator_vtable ; 

__attribute__((used)) static svn_error_t *
FUNC8(svn_fs_path_change_iterator_t **iterator,
                 svn_fs_root_t *root,
                 apr_pool_t *result_pool,
                 apr_pool_t *scratch_pool)
{
  svn_fs_path_change_iterator_t *result = FUNC2(result_pool,
                                                      sizeof(*result));
  if (root->is_txn_root)
    {
      apr_hash_t *changed_paths;
      FUNC0(FUNC6(&changed_paths, root->fs,
                                          FUNC5(root),
                                          result_pool));

      result->fsap_data = FUNC1(result_pool, changed_paths);
      result->vtable = &txn_changes_iterator_vtable;
    }
  else
    {
      /* The block of changes that we retrieve need to live in a separately
         cleanable pool. */
      apr_pool_t *changes_pool = FUNC7(result_pool);

      /* Our iteration context info. */
      fs_revision_changes_iterator_data_t *data = FUNC2(result_pool,
                                                              sizeof(*data));

      /* This pool must remain valid as long as ITERATOR lives but will
         be used only for temporary allocations and will be cleaned up
         frequently.  So, this must be a sub-pool of RESULT_POOL. */
      data->scratch_pool = FUNC7(result_pool);

      /* Fetch the first block of data. */
      FUNC0(FUNC3(&data->context,
                                               root->fs, root->rev,
                                               result_pool, scratch_pool));
      FUNC0(FUNC4(&data->changes, data->context,
                                    changes_pool, scratch_pool));

      /* Return the fully initialized object. */
      result->fsap_data = data;
      result->vtable = &rev_changes_iterator_vtable;
    }

  *iterator = result;

  return SVN_NO_ERROR;
}
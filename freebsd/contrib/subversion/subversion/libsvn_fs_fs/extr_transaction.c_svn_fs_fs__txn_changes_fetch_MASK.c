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
typedef  int /*<<< orphan*/  svn_fs_fs__id_part_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_3__ {void* deletions; int /*<<< orphan*/ * changed_paths; } ;
typedef  TYPE_1__ process_changes_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_file_t ;

/* Variables and functions */
 int APR_BUFFERED ; 
 int /*<<< orphan*/  APR_OS_DEFAULT ; 
 int APR_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  process_changes ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC8(apr_hash_t **changed_paths_p,
                             svn_fs_t *fs,
                             const svn_fs_fs__id_part_t *txn_id,
                             apr_pool_t *pool)
{
  apr_file_t *file;
  apr_hash_t *changed_paths = FUNC1(pool);
  apr_pool_t *scratch_pool = FUNC5(pool);
  process_changes_baton_t baton;

  baton.changed_paths = changed_paths;
  baton.deletions = FUNC1(scratch_pool);

  FUNC0(FUNC4(&file,
                           FUNC2(fs, txn_id, scratch_pool),
                           APR_READ | APR_BUFFERED, APR_OS_DEFAULT,
                           scratch_pool));

  FUNC0(FUNC3(
                                  FUNC7(file, TRUE,
                                                           scratch_pool),
                                  process_changes, &baton,
                                  scratch_pool));
  FUNC6(scratch_pool);

  *changed_paths_p = changed_paths;

  return SVN_NO_ERROR;
}
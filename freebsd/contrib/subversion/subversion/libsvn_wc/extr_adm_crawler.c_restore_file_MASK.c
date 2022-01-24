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
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_skel_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC6(svn_wc__db_t *db,
             const char *local_abspath,
             svn_boolean_t use_commit_times,
             svn_boolean_t mark_resolved_text_conflict,
             svn_cancel_func_t cancel_func,
             void *cancel_baton,
             apr_pool_t *scratch_pool)
{
  svn_skel_t *work_item;

  FUNC0(FUNC4(&work_item,
                                        db, local_abspath,
                                        NULL /* source_abspath */,
                                        use_commit_times,
                                        TRUE /* record_fileinfo */,
                                        scratch_pool, scratch_pool));
  /* ### we need an existing path for wq_add. not entirely WRI_ABSPATH yet  */
  FUNC0(FUNC2(db,
                            FUNC1(local_abspath, scratch_pool),
                            work_item, scratch_pool));

  /* Run the work item immediately.  */
  FUNC0(FUNC5(db, local_abspath,
                         cancel_func, cancel_baton,
                         scratch_pool));

  /* Remove any text conflict */
  if (mark_resolved_text_conflict)
    FUNC0(FUNC3(db, local_abspath,
                                                cancel_func, cancel_baton,
                                                scratch_pool));

  return SVN_NO_ERROR;
}
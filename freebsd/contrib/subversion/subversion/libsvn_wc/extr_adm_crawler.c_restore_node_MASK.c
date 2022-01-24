#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ kind; } ;
typedef  TYPE_1__ svn_wc_notify_t ;
typedef  int /*<<< orphan*/  (* svn_wc_notify_func2_t ) (void*,TYPE_1__*,int /*<<< orphan*/ *) ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_OS_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (void*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_dir ; 
 scalar_t__ svn_node_file ; 
 scalar_t__ svn_node_symlink ; 
 TYPE_1__* FUNC4 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_wc_notify_restore ; 

__attribute__((used)) static svn_error_t *
FUNC5(svn_wc__db_t *db,
             const char *local_abspath,
             svn_node_kind_t kind,
             svn_boolean_t mark_resolved_text_conflict,
             svn_boolean_t use_commit_times,
             svn_cancel_func_t cancel_func,
             void *cancel_baton,
             svn_wc_notify_func2_t notify_func,
             void *notify_baton,
             apr_pool_t *scratch_pool)
{
  if (kind == svn_node_file || kind == svn_node_symlink)
    {
      /* Recreate file from text-base; mark any text conflict as resolved */
      FUNC0(FUNC1(db, local_abspath, use_commit_times,
                           mark_resolved_text_conflict,
                           cancel_func, cancel_baton,
                           scratch_pool));
    }
  else if (kind == svn_node_dir)
    {
      /* Recreating a directory is just a mkdir */
      FUNC0(FUNC3(local_abspath, APR_OS_DEFAULT, scratch_pool));
    }

  /* ... report the restoration to the caller.  */
  if (notify_func != NULL)
    {
      svn_wc_notify_t *notify = FUNC4(local_abspath,
                                                     svn_wc_notify_restore,
                                                     scratch_pool);
      notify->kind = svn_node_file;
      (*notify_func)(notify_baton, notify, scratch_pool);
    }

  return SVN_NO_ERROR;
}
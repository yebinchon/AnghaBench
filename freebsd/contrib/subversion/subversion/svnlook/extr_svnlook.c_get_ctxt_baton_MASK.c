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
struct TYPE_4__ {scalar_t__ rev_id; int /*<<< orphan*/  fs; scalar_t__ txn_name; int /*<<< orphan*/  txn; int /*<<< orphan*/  diff_cmd; int /*<<< orphan*/  properties_only; int /*<<< orphan*/  ignore_properties; int /*<<< orphan*/  diff_options; int /*<<< orphan*/  is_revision; int /*<<< orphan*/  copy_info; int /*<<< orphan*/  full_paths; int /*<<< orphan*/  diff_copy_from; int /*<<< orphan*/  no_diff_added; int /*<<< orphan*/  no_diff_deleted; int /*<<< orphan*/  limit; int /*<<< orphan*/  show_ids; int /*<<< orphan*/  repos; } ;
typedef  TYPE_1__ svnlook_ctxt_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct svnlook_opt_state {scalar_t__ rev; char* extensions; int /*<<< orphan*/  diff_cmd; int /*<<< orphan*/  properties_only; int /*<<< orphan*/  ignore_properties; int /*<<< orphan*/ * txn; int /*<<< orphan*/  copy_info; int /*<<< orphan*/  full_paths; int /*<<< orphan*/  diff_copy_from; int /*<<< orphan*/  no_diff_added; int /*<<< orphan*/  no_diff_deleted; int /*<<< orphan*/  limit; int /*<<< orphan*/  show_ids; int /*<<< orphan*/  repos_path; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  warning_func ; 

__attribute__((used)) static svn_error_t *
FUNC9(svnlook_ctxt_t **baton_p,
               struct svnlook_opt_state *opt_state,
               apr_pool_t *pool)
{
  svnlook_ctxt_t *baton = FUNC1(pool, sizeof(*baton));

  FUNC0(FUNC8(&(baton->repos), opt_state->repos_path, NULL,
                          pool, pool));
  baton->fs = FUNC7(baton->repos);
  FUNC5(baton->fs, warning_func, NULL);
  baton->show_ids = opt_state->show_ids;
  baton->limit = opt_state->limit;
  baton->no_diff_deleted = opt_state->no_diff_deleted;
  baton->no_diff_added = opt_state->no_diff_added;
  baton->diff_copy_from = opt_state->diff_copy_from;
  baton->full_paths = opt_state->full_paths;
  baton->copy_info = opt_state->copy_info;
  baton->is_revision = opt_state->txn == NULL;
  baton->rev_id = opt_state->rev;
  baton->txn_name = FUNC2(pool, opt_state->txn);
  baton->diff_options = FUNC3(opt_state->extensions
                                          ? opt_state->extensions : "",
                                          " \t\n\r", TRUE, pool);
  baton->ignore_properties = opt_state->ignore_properties;
  baton->properties_only = opt_state->properties_only;
  baton->diff_cmd = opt_state->diff_cmd;

  if (baton->txn_name)
    FUNC0(FUNC4(&(baton->txn), baton->fs,
                            baton->txn_name, pool));
  else if (baton->rev_id == SVN_INVALID_REVNUM)
    FUNC0(FUNC6(&(baton->rev_id), baton->fs, pool));

  *baton_p = baton;
  return SVN_NO_ERROR;
}
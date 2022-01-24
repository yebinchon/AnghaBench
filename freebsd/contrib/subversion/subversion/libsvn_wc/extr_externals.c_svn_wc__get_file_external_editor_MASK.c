#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_wc_notify_func2_t ;
struct TYPE_13__ {int /*<<< orphan*/ * db; } ;
typedef  TYPE_2__ svn_wc_context_t ;
typedef  int /*<<< orphan*/  svn_wc_conflict_resolver_func2_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_prop_t ;
struct TYPE_12__ {void* number; } ;
struct TYPE_14__ {scalar_t__ kind; TYPE_1__ value; } ;
typedef  TYPE_3__ svn_opt_revision_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_15__ {int /*<<< orphan*/  close_edit; int /*<<< orphan*/  close_file; int /*<<< orphan*/  change_file_prop; int /*<<< orphan*/  apply_textdelta; int /*<<< orphan*/  open_file; int /*<<< orphan*/  add_file; int /*<<< orphan*/  set_target_revision; int /*<<< orphan*/  open_root; } ;
typedef  TYPE_4__ svn_delta_editor_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct edit_baton {char const* repos_root_url; char const* diff3cmd; int /*<<< orphan*/  propchanges; void* notify_baton; int /*<<< orphan*/  notify_func; void* cancel_baton; int /*<<< orphan*/  cancel_func; void* conflict_baton; int /*<<< orphan*/  conflict_func; void* recorded_revision; void* recorded_peg_revision; void* changed_rev; void* recorded_repos_relpath; void* record_ancestor_abspath; int /*<<< orphan*/  const* ext_patterns; int /*<<< orphan*/  use_commit_times; int /*<<< orphan*/ * iprops; void* original_revision; void* new_repos_relpath; void* old_repos_relpath; void* repos_uuid; int /*<<< orphan*/ * target_revision; void* local_abspath; int /*<<< orphan*/  name; void* wri_abspath; int /*<<< orphan*/ * db; int /*<<< orphan*/ * pool; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 void* SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/  add_file ; 
 int /*<<< orphan*/  apply_textdelta ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 struct edit_baton* FUNC1 (int /*<<< orphan*/ *,int) ; 
 void* FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  change_file_prop ; 
 int /*<<< orphan*/  close_edit ; 
 int /*<<< orphan*/  close_file ; 
 int /*<<< orphan*/  open_file ; 
 int /*<<< orphan*/  open_root ; 
 int /*<<< orphan*/  set_target_revision ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,void*,TYPE_4__*,struct edit_baton*,TYPE_4__ const**,void**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ *) ; 
 void* FUNC6 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_opt_revision_number ; 
 void* FUNC7 (char const*,char const*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC8(const svn_delta_editor_t **editor,
                                 void **edit_baton,
                                 svn_revnum_t *target_revision,
                                 svn_wc_context_t *wc_ctx,
                                 const char *local_abspath,
                                 const char *wri_abspath,
                                 const char *url,
                                 const char *repos_root_url,
                                 const char *repos_uuid,
                                 apr_array_header_t *iprops,
                                 svn_boolean_t use_commit_times,
                                 const char *diff3_cmd,
                                 const apr_array_header_t *preserved_exts,
                                 const char *record_ancestor_abspath,
                                 const char *recorded_url,
                                 const svn_opt_revision_t *recorded_peg_rev,
                                 const svn_opt_revision_t *recorded_rev,
                                 svn_wc_conflict_resolver_func2_t conflict_func,
                                 void *conflict_baton,
                                 svn_cancel_func_t cancel_func,
                                 void *cancel_baton,
                                 svn_wc_notify_func2_t notify_func,
                                 void *notify_baton,
                                 apr_pool_t *result_pool,
                                 apr_pool_t *scratch_pool)
{
  svn_wc__db_t *db = wc_ctx->db;
  apr_pool_t *edit_pool = result_pool;
  struct edit_baton *eb = FUNC1(edit_pool, sizeof(*eb));
  svn_delta_editor_t *tree_editor = FUNC3(edit_pool);

  eb->pool = edit_pool;
  eb->db = db;
  eb->local_abspath = FUNC2(edit_pool, local_abspath);
  if (wri_abspath)
    eb->wri_abspath = FUNC2(edit_pool, wri_abspath);
  else
    eb->wri_abspath = FUNC6(local_abspath, edit_pool);
  eb->name = FUNC5(eb->local_abspath, NULL);
  eb->target_revision = target_revision;

  eb->repos_root_url = FUNC2(edit_pool, repos_root_url);
  eb->repos_uuid = FUNC2(edit_pool, repos_uuid);
  eb->new_repos_relpath = FUNC7(eb->repos_root_url, url, edit_pool);
  eb->old_repos_relpath = eb->new_repos_relpath;

  eb->original_revision = SVN_INVALID_REVNUM;

  eb->iprops = iprops;

  eb->use_commit_times = use_commit_times;
  eb->ext_patterns = preserved_exts;
  eb->diff3cmd = diff3_cmd;

  eb->record_ancestor_abspath = FUNC2(edit_pool,record_ancestor_abspath);
  eb->recorded_repos_relpath = FUNC7(repos_root_url, recorded_url,
                                                     edit_pool);

  eb->changed_rev = SVN_INVALID_REVNUM;

  if (recorded_peg_rev->kind == svn_opt_revision_number)
    eb->recorded_peg_revision = recorded_peg_rev->value.number;
  else
    eb->recorded_peg_revision = SVN_INVALID_REVNUM; /* Not fixed/HEAD */

  if (recorded_rev->kind == svn_opt_revision_number)
    eb->recorded_revision = recorded_rev->value.number;
  else
    eb->recorded_revision = SVN_INVALID_REVNUM; /* Not fixed/HEAD */

  eb->conflict_func = conflict_func;
  eb->conflict_baton = conflict_baton;
  eb->cancel_func = cancel_func;
  eb->cancel_baton = cancel_baton;
  eb->notify_func = notify_func;
  eb->notify_baton = notify_baton;

  eb->propchanges  = FUNC0(edit_pool, 1, sizeof(svn_prop_t));

  tree_editor->open_root = open_root;
  tree_editor->set_target_revision = set_target_revision;
  tree_editor->add_file = add_file;
  tree_editor->open_file = open_file;
  tree_editor->apply_textdelta = apply_textdelta;
  tree_editor->change_file_prop = change_file_prop;
  tree_editor->close_file = close_file;
  tree_editor->close_edit = close_edit;

  return FUNC4(cancel_func, cancel_baton,
                                           tree_editor, eb,
                                           editor, edit_baton,
                                           result_pool);
}
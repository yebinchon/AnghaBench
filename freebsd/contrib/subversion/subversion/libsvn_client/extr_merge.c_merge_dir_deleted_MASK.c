#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {scalar_t__ apr_err; } ;
typedef  TYPE_3__ svn_error_t ;
typedef  int /*<<< orphan*/  svn_diff_source_t ;
typedef  int svn_boolean_t ;
struct svn_diff_tree_processor_t {TYPE_4__* baton; } ;
struct merge_dir_baton_t {scalar_t__ tree_conflict_reason; int /*<<< orphan*/  parent_baton; struct dir_delete_baton_t* delete_state; int /*<<< orphan*/  skip_reason; scalar_t__ shadowed; } ;
struct dir_delete_baton_t {void* found_edit; struct merge_dir_baton_t* del_root; int /*<<< orphan*/  compared_abspaths; } ;
struct TYPE_20__ {int /*<<< orphan*/  pool; int /*<<< orphan*/  paths_with_deleted_mergeinfo; TYPE_2__* ctx; int /*<<< orphan*/  dry_run; scalar_t__ force_delete; scalar_t__ record_only; TYPE_1__* target; } ;
typedef  TYPE_4__ merge_cmd_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;
struct TYPE_18__ {int /*<<< orphan*/  cancel_baton; int /*<<< orphan*/  cancel_func; int /*<<< orphan*/  wc_ctx; int /*<<< orphan*/  config; } ;
struct TYPE_17__ {int /*<<< orphan*/  abspath; } ;

/* Variables and functions */
 scalar_t__ CONFLICT_REASON_NONE ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SVN_ERR_CEASE_INVOCATION ; 
 scalar_t__ SVN_ERR_WC_LEFT_LOCAL_MOD ; 
 TYPE_3__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_PROP_MERGEINFO ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,struct merge_dir_baton_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,struct merge_dir_baton_t*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  svn_depth_infinity ; 
 char* FUNC10 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 TYPE_3__* FUNC12 (TYPE_3__*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svn_node_dir ; 
 int /*<<< orphan*/  svn_node_none ; 
 int /*<<< orphan*/  svn_wc_conflict_action_delete ; 
 int /*<<< orphan*/  svn_wc_conflict_reason_edited ; 
 TYPE_3__* FUNC14 (int /*<<< orphan*/ ,char const*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_wc_notify_update_shadowed_delete ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC17 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,void*,int,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct dir_delete_baton_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  verify_touched_by_del_check ; 

__attribute__((used)) static svn_error_t *
FUNC18(const char *relpath,
                  const svn_diff_source_t *left_source,
                  /*const*/ apr_hash_t *left_props,
                  void *dir_baton,
                  const struct svn_diff_tree_processor_t *processor,
                  apr_pool_t *scratch_pool)
{
  merge_cmd_baton_t *merge_b = processor->baton;
  struct merge_dir_baton_t *db = dir_baton;
  const char *local_abspath = FUNC10(merge_b->target->abspath,
                                              relpath, scratch_pool);
  svn_boolean_t same;
  apr_hash_t *working_props;

  FUNC0(FUNC3(merge_b, db, scratch_pool));
  FUNC0(FUNC4(merge_b, db, local_abspath, scratch_pool));

  if (db->shadowed)
    {
      if (db->tree_conflict_reason == CONFLICT_REASON_NONE)
        {
          /* We haven't notified for this node yet: report a skip */
          FUNC0(FUNC6(merge_b, local_abspath, svn_node_dir,
                              svn_wc_notify_update_shadowed_delete,
                              db->skip_reason, db->parent_baton,
                              scratch_pool));
        }

      return SVN_NO_ERROR;
    }

  /* Easy out: We are only applying mergeinfo differences. */
  if (merge_b->record_only)
    {
      return SVN_NO_ERROR;
    }

  FUNC0(FUNC16(&working_props,
                            merge_b->ctx->wc_ctx, local_abspath,
                            scratch_pool, scratch_pool));

  if (merge_b->force_delete)
    {
      /* In this legacy mode we just assume that a directory delete
         matches any directory. db->delete_state is NULL */
      same = TRUE;
    }
  else
    {
      struct dir_delete_baton_t *delb;

      /* Compare the properties */
      FUNC0(FUNC5(&same, left_props, working_props,
                                scratch_pool));
      delb = db->delete_state;
      FUNC2(delb != NULL);

      if (! same)
        {
          delb->found_edit = TRUE;
        }
      else
        {
          FUNC9(delb->compared_abspaths, local_abspath);
        }

      if (delb->del_root != db)
        return SVN_NO_ERROR;

      if (delb->found_edit)
        same = FALSE;
      else
        {
          apr_array_header_t *ignores;
          svn_error_t *err;
          same = TRUE;

          FUNC0(FUNC15(&ignores, merge_b->ctx->config,
                                             scratch_pool));

          /* None of the descendants was modified, but maybe there are
             descendants we haven't walked?

             Note that we aren't interested in changes, as we already verified
             changes in the paths touched by the merge. And the existence of
             other paths is enough to mark the directory edited */
          err = FUNC17(merge_b->ctx->wc_ctx, local_abspath,
                                   svn_depth_infinity, TRUE /* get-all */,
                                   FALSE /* no-ignore */,
                                   TRUE /* ignore-text-mods */, ignores,
                                   verify_touched_by_del_check, delb,
                                   merge_b->ctx->cancel_func,
                                   merge_b->ctx->cancel_baton,
                                   scratch_pool);

          if (err)
            {
              if (err->apr_err != SVN_ERR_CEASE_INVOCATION)
                return FUNC12(err);

              FUNC11(err);
            }

          same = ! delb->found_edit;
        }
    }

  if (same && !merge_b->dry_run)
    {
      svn_error_t *err;

      err = FUNC14(merge_b->ctx->wc_ctx, local_abspath,
                           FALSE /* keep_local */, FALSE /* unversioned */,
                           merge_b->ctx->cancel_func,
                           merge_b->ctx->cancel_baton,
                           NULL, NULL /* no notify */,
                           scratch_pool);

      if (err)
        {
          if (err->apr_err != SVN_ERR_WC_LEFT_LOCAL_MOD)
            return FUNC12(err);

          FUNC11(err);
          same = FALSE;
        }
    }

  if (! same)
    {
      /* If the attempt to delete an existing directory failed,
       * the directory has local modifications (e.g. locally added
       * files, or property changes). Flag a tree conflict. */

      /* This handles use case 5 described in the paper attached to issue
       * #2282.  See also notes/tree-conflicts/detection.txt
       */
      FUNC0(FUNC7(merge_b, local_abspath, db->parent_baton,
                                   svn_node_dir,
                                   svn_node_dir,
                                   svn_node_none,
                                   svn_wc_conflict_action_delete,
                                   svn_wc_conflict_reason_edited,
                                   NULL, TRUE,
                                   scratch_pool));
    }
  else
    {
      /* Record that we might have deleted mergeinfo */
      if (working_props
          && FUNC13(working_props, SVN_PROP_MERGEINFO))
        {
          FUNC1(&merge_b->paths_with_deleted_mergeinfo,
                               local_abspath, merge_b->pool);
        }

      FUNC0(FUNC8(merge_b, db->parent_baton, local_abspath,
                                   svn_node_dir, scratch_pool));
    }

  return SVN_NO_ERROR;
}
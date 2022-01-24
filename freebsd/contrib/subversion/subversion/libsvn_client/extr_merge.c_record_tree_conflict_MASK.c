#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_7__ ;
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
struct TYPE_22__ {int /*<<< orphan*/  kind; } ;
typedef  TYPE_3__ svn_wc_notify_t ;
typedef  int /*<<< orphan*/  svn_wc_context_t ;
typedef  int /*<<< orphan*/  svn_wc_conflict_version_t ;
typedef  scalar_t__ svn_wc_conflict_reason_t ;
struct TYPE_23__ {scalar_t__ reason; scalar_t__ action; int /*<<< orphan*/ * src_left_version; } ;
typedef  TYPE_4__ svn_wc_conflict_description2_t ;
typedef  scalar_t__ svn_wc_conflict_action_t ;
typedef  int /*<<< orphan*/  svn_node_kind_t ;
struct TYPE_24__ {int /*<<< orphan*/  end; int /*<<< orphan*/  start; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_5__ svn_merge_range_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_25__ {int /*<<< orphan*/  rev; } ;
typedef  TYPE_6__ svn_client__pathrev_t ;
typedef  scalar_t__ svn_boolean_t ;
struct merge_source_t {scalar_t__ ancestral; int /*<<< orphan*/  loc2; int /*<<< orphan*/  loc1; } ;
struct merge_dir_baton_t {int /*<<< orphan*/  new_tree_conflicts; int /*<<< orphan*/ * pool; } ;
struct TYPE_20__ {int /*<<< orphan*/  nodes_with_mergeinfo; } ;
struct TYPE_26__ {TYPE_2__* ctx; int /*<<< orphan*/  target; struct merge_source_t merge_source; TYPE_1__ notify_begin; int /*<<< orphan*/  dry_run; int /*<<< orphan*/  pool; int /*<<< orphan*/  conflicted_paths; int /*<<< orphan*/  tree_conflicted_abspaths; scalar_t__ reintegrate_merge; scalar_t__ record_only; } ;
typedef  TYPE_7__ merge_cmd_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_21__ {int /*<<< orphan*/  notify_baton2; int /*<<< orphan*/  (* notify_func2 ) (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *) ;int /*<<< orphan*/ * wc_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const**,int /*<<< orphan*/  const**,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct merge_source_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct merge_source_t* FUNC7 (TYPE_6__*,TYPE_6__*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_7__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *) ; 
 TYPE_6__* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_wc_conflict_action_delete ; 
 TYPE_4__* FUNC17 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_wc_conflict_reason_added ; 
 scalar_t__ svn_wc_conflict_reason_deleted ; 
 scalar_t__ svn_wc_conflict_reason_moved_away ; 
 scalar_t__ svn_wc_conflict_reason_moved_here ; 
 TYPE_3__* FUNC18 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_wc_notify_tree_conflict ; 
 int /*<<< orphan*/  svn_wc_operation_merge ; 

__attribute__((used)) static svn_error_t *
FUNC19(merge_cmd_baton_t *merge_b,
                     const char *local_abspath,
                     struct merge_dir_baton_t *parent_baton,
                     svn_node_kind_t local_node_kind,
                     svn_node_kind_t merge_left_node_kind,
                     svn_node_kind_t merge_right_node_kind,
                     svn_wc_conflict_action_t action,
                     svn_wc_conflict_reason_t reason,
                     const svn_wc_conflict_description2_t *existing_conflict,
                     svn_boolean_t notify_tc,
                     apr_pool_t *scratch_pool)
{
  svn_wc_context_t *wc_ctx = merge_b->ctx->wc_ctx;

  if (merge_b->record_only)
    return SVN_NO_ERROR;

  if (merge_b->merge_source.ancestral
      || merge_b->reintegrate_merge)
    {
      FUNC9(merge_b->tree_conflicted_abspaths, local_abspath);
    }

  FUNC2(&merge_b->conflicted_paths, local_abspath,
                       merge_b->pool);

  if (!merge_b->dry_run)
    {
       svn_wc_conflict_description2_t *conflict;
       const svn_wc_conflict_version_t *left;
       const svn_wc_conflict_version_t *right;
       apr_pool_t *result_pool = parent_baton ? parent_baton->pool
                                              : scratch_pool;

      if (reason == svn_wc_conflict_reason_deleted)
        {
          const char *moved_to_abspath;

          FUNC1(FUNC15(&moved_to_abspath, NULL,
                                              wc_ctx, local_abspath,
                                              scratch_pool, scratch_pool));

          if (moved_to_abspath)
            {
              /* Local abspath itself has been moved away. If only a
                 descendant is moved away, we call the node itself deleted */
              reason = svn_wc_conflict_reason_moved_away;
            }
        }
      else if (reason == svn_wc_conflict_reason_added)
        {
          const char *moved_from_abspath;
          FUNC1(FUNC16(&moved_from_abspath, NULL,
                                              wc_ctx, local_abspath,
                                              scratch_pool, scratch_pool));
          if (moved_from_abspath)
            reason = svn_wc_conflict_reason_moved_here;
        }

      if (FUNC0(merge_b) && merge_b->merge_source.ancestral)
        {
          struct merge_source_t *source;
          svn_client__pathrev_t *loc1;
          svn_client__pathrev_t *loc2;
          svn_merge_range_t range =
            {SVN_INVALID_REVNUM, SVN_INVALID_REVNUM, TRUE};

          /* We are honoring mergeinfo so do not blindly record
           * a conflict describing the merge of
           * SOURCE->LOC1->URL@SOURCE->LOC1->REV through
           * SOURCE->LOC2->URL@SOURCE->LOC2->REV
           * but figure out the actual revision range merged. */
          (void)FUNC5(
            &(range.start), &(range.end),
            merge_b->notify_begin.nodes_with_mergeinfo,
            action != svn_wc_conflict_action_delete,
            local_abspath);
          loc1 = FUNC11(merge_b->merge_source.loc1,
                                         scratch_pool);
          loc2 = FUNC11(merge_b->merge_source.loc2,
                                         scratch_pool);
          loc1->rev = range.start;
          loc2->rev = range.end;
          source = FUNC7(loc1, loc2,
                                       merge_b->merge_source.ancestral,
                                       scratch_pool);
          FUNC1(FUNC6(&left, &right, local_abspath,
                                         merge_left_node_kind,
                                         merge_right_node_kind,
                                         source, merge_b->target,
                                         result_pool, scratch_pool));
        }
      else
        FUNC1(FUNC6(&left, &right, local_abspath,
                                       merge_left_node_kind,
                                       merge_right_node_kind,
                                       &merge_b->merge_source, merge_b->target,
                                       result_pool, scratch_pool));

      /* Fix up delete of file, add of dir replacement (or other way around) */
      if (existing_conflict != NULL && existing_conflict->src_left_version)
          left = existing_conflict->src_left_version;

      conflict = FUNC17(
                        local_abspath, local_node_kind,
                        svn_wc_operation_merge,
                        left, right, result_pool);

      conflict->action = action;
      conflict->reason = reason;

      /* May return SVN_ERR_WC_PATH_UNEXPECTED_STATUS */
      if (existing_conflict)
        FUNC1(FUNC14(wc_ctx, local_abspath,
                                          scratch_pool));

      FUNC1(FUNC13(merge_b->ctx->wc_ctx, conflict,
                                        scratch_pool));

      if (parent_baton)
        {
          if (! parent_baton->new_tree_conflicts)
            parent_baton->new_tree_conflicts = FUNC3(result_pool);

          FUNC12(parent_baton->new_tree_conflicts,
                        FUNC4(result_pool, local_abspath),
                        conflict);
        }

      /* ### TODO: Store in parent baton */
    }

  /* On a replacement we currently get two tree conflicts */
  if (merge_b->ctx->notify_func2 && notify_tc)
    {
      svn_wc_notify_t *notify;

      FUNC1(FUNC8(merge_b, local_abspath, FALSE, scratch_pool));

      notify = FUNC18(local_abspath, svn_wc_notify_tree_conflict,
                                    scratch_pool);
      notify->kind = local_node_kind;

      merge_b->ctx->notify_func2(merge_b->ctx->notify_baton2, notify,
                                 scratch_pool);
    }

  return SVN_NO_ERROR;
}
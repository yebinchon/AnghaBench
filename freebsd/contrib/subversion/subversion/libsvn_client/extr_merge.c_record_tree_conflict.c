
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


struct TYPE_22__ {int kind; } ;
typedef TYPE_3__ svn_wc_notify_t ;
typedef int svn_wc_context_t ;
typedef int svn_wc_conflict_version_t ;
typedef scalar_t__ svn_wc_conflict_reason_t ;
struct TYPE_23__ {scalar_t__ reason; scalar_t__ action; int * src_left_version; } ;
typedef TYPE_4__ svn_wc_conflict_description2_t ;
typedef scalar_t__ svn_wc_conflict_action_t ;
typedef int svn_node_kind_t ;
struct TYPE_24__ {int end; int start; int member_2; int member_1; int member_0; } ;
typedef TYPE_5__ svn_merge_range_t ;
typedef int svn_error_t ;
struct TYPE_25__ {int rev; } ;
typedef TYPE_6__ svn_client__pathrev_t ;
typedef scalar_t__ svn_boolean_t ;
struct merge_source_t {scalar_t__ ancestral; int loc2; int loc1; } ;
struct merge_dir_baton_t {int new_tree_conflicts; int * pool; } ;
struct TYPE_20__ {int nodes_with_mergeinfo; } ;
struct TYPE_26__ {TYPE_2__* ctx; int target; struct merge_source_t merge_source; TYPE_1__ notify_begin; int dry_run; int pool; int conflicted_paths; int tree_conflicted_abspaths; scalar_t__ reintegrate_merge; scalar_t__ record_only; } ;
typedef TYPE_7__ merge_cmd_baton_t ;
typedef int apr_pool_t ;
struct TYPE_21__ {int notify_baton2; int (* notify_func2 ) (int ,TYPE_3__*,int *) ;int * wc_ctx; } ;


 int FALSE ;
 scalar_t__ HONOR_MERGEINFO (TYPE_7__*) ;
 int SVN_ERR (int ) ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int alloc_and_store_path (int *,char const*,int ) ;
 int apr_hash_make (int *) ;
 int apr_pstrdup (int *,char const*) ;
 int find_nearest_ancestor_with_intersecting_ranges (int *,int *,int ,int,char const*) ;
 int make_conflict_versions (int const**,int const**,char const*,int ,int ,struct merge_source_t*,int ,int *,int *) ;
 struct merge_source_t* merge_source_create (TYPE_6__*,TYPE_6__*,scalar_t__,int *) ;
 int notify_merge_begin (TYPE_7__*,char const*,int ,int *) ;
 int store_path (int ,char const*) ;
 int stub1 (int ,TYPE_3__*,int *) ;
 TYPE_6__* svn_client__pathrev_dup (int ,int *) ;
 int svn_hash_sets (int ,int ,TYPE_4__*) ;
 int svn_wc__add_tree_conflict (int *,TYPE_4__*,int *) ;
 int svn_wc__del_tree_conflict (int *,char const*,int *) ;
 int svn_wc__node_was_moved_away (char const**,int *,int *,char const*,int *,int *) ;
 int svn_wc__node_was_moved_here (char const**,int *,int *,char const*,int *,int *) ;
 scalar_t__ svn_wc_conflict_action_delete ;
 TYPE_4__* svn_wc_conflict_description_create_tree2 (char const*,int ,int ,int const*,int const*,int *) ;
 scalar_t__ svn_wc_conflict_reason_added ;
 scalar_t__ svn_wc_conflict_reason_deleted ;
 scalar_t__ svn_wc_conflict_reason_moved_away ;
 scalar_t__ svn_wc_conflict_reason_moved_here ;
 TYPE_3__* svn_wc_create_notify (char const*,int ,int *) ;
 int svn_wc_notify_tree_conflict ;
 int svn_wc_operation_merge ;

__attribute__((used)) static svn_error_t *
record_tree_conflict(merge_cmd_baton_t *merge_b,
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
      store_path(merge_b->tree_conflicted_abspaths, local_abspath);
    }

  alloc_and_store_path(&merge_b->conflicted_paths, local_abspath,
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

          SVN_ERR(svn_wc__node_was_moved_away(&moved_to_abspath, ((void*)0),
                                              wc_ctx, local_abspath,
                                              scratch_pool, scratch_pool));

          if (moved_to_abspath)
            {


              reason = svn_wc_conflict_reason_moved_away;
            }
        }
      else if (reason == svn_wc_conflict_reason_added)
        {
          const char *moved_from_abspath;
          SVN_ERR(svn_wc__node_was_moved_here(&moved_from_abspath, ((void*)0),
                                              wc_ctx, local_abspath,
                                              scratch_pool, scratch_pool));
          if (moved_from_abspath)
            reason = svn_wc_conflict_reason_moved_here;
        }

      if (HONOR_MERGEINFO(merge_b) && merge_b->merge_source.ancestral)
        {
          struct merge_source_t *source;
          svn_client__pathrev_t *loc1;
          svn_client__pathrev_t *loc2;
          svn_merge_range_t range =
            {SVN_INVALID_REVNUM, SVN_INVALID_REVNUM, TRUE};






          (void)find_nearest_ancestor_with_intersecting_ranges(
            &(range.start), &(range.end),
            merge_b->notify_begin.nodes_with_mergeinfo,
            action != svn_wc_conflict_action_delete,
            local_abspath);
          loc1 = svn_client__pathrev_dup(merge_b->merge_source.loc1,
                                         scratch_pool);
          loc2 = svn_client__pathrev_dup(merge_b->merge_source.loc2,
                                         scratch_pool);
          loc1->rev = range.start;
          loc2->rev = range.end;
          source = merge_source_create(loc1, loc2,
                                       merge_b->merge_source.ancestral,
                                       scratch_pool);
          SVN_ERR(make_conflict_versions(&left, &right, local_abspath,
                                         merge_left_node_kind,
                                         merge_right_node_kind,
                                         source, merge_b->target,
                                         result_pool, scratch_pool));
        }
      else
        SVN_ERR(make_conflict_versions(&left, &right, local_abspath,
                                       merge_left_node_kind,
                                       merge_right_node_kind,
                                       &merge_b->merge_source, merge_b->target,
                                       result_pool, scratch_pool));


      if (existing_conflict != ((void*)0) && existing_conflict->src_left_version)
          left = existing_conflict->src_left_version;

      conflict = svn_wc_conflict_description_create_tree2(
                        local_abspath, local_node_kind,
                        svn_wc_operation_merge,
                        left, right, result_pool);

      conflict->action = action;
      conflict->reason = reason;


      if (existing_conflict)
        SVN_ERR(svn_wc__del_tree_conflict(wc_ctx, local_abspath,
                                          scratch_pool));

      SVN_ERR(svn_wc__add_tree_conflict(merge_b->ctx->wc_ctx, conflict,
                                        scratch_pool));

      if (parent_baton)
        {
          if (! parent_baton->new_tree_conflicts)
            parent_baton->new_tree_conflicts = apr_hash_make(result_pool);

          svn_hash_sets(parent_baton->new_tree_conflicts,
                        apr_pstrdup(result_pool, local_abspath),
                        conflict);
        }


    }


  if (merge_b->ctx->notify_func2 && notify_tc)
    {
      svn_wc_notify_t *notify;

      SVN_ERR(notify_merge_begin(merge_b, local_abspath, FALSE, scratch_pool));

      notify = svn_wc_create_notify(local_abspath, svn_wc_notify_tree_conflict,
                                    scratch_pool);
      notify->kind = local_node_kind;

      merge_b->ctx->notify_func2(merge_b->ctx->notify_baton2, notify,
                                 scratch_pool);
    }

  return SVN_NO_ERROR;
}

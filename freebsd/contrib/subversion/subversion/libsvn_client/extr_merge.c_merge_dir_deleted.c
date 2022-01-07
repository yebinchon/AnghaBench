
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_19__ {scalar_t__ apr_err; } ;
typedef TYPE_3__ svn_error_t ;
typedef int svn_diff_source_t ;
typedef int svn_boolean_t ;
struct svn_diff_tree_processor_t {TYPE_4__* baton; } ;
struct merge_dir_baton_t {scalar_t__ tree_conflict_reason; int parent_baton; struct dir_delete_baton_t* delete_state; int skip_reason; scalar_t__ shadowed; } ;
struct dir_delete_baton_t {void* found_edit; struct merge_dir_baton_t* del_root; int compared_abspaths; } ;
struct TYPE_20__ {int pool; int paths_with_deleted_mergeinfo; TYPE_2__* ctx; int dry_run; scalar_t__ force_delete; scalar_t__ record_only; TYPE_1__* target; } ;
typedef TYPE_4__ merge_cmd_baton_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_array_header_t ;
struct TYPE_18__ {int cancel_baton; int cancel_func; int wc_ctx; int config; } ;
struct TYPE_17__ {int abspath; } ;


 scalar_t__ CONFLICT_REASON_NONE ;
 int FALSE ;
 int SVN_ERR (int ) ;
 scalar_t__ SVN_ERR_CEASE_INVOCATION ;
 scalar_t__ SVN_ERR_WC_LEFT_LOCAL_MOD ;
 TYPE_3__* SVN_NO_ERROR ;
 int SVN_PROP_MERGEINFO ;
 void* TRUE ;
 int alloc_and_store_path (int *,char const*,int ) ;
 int assert (int ) ;
 int handle_pending_notifications (TYPE_4__*,struct merge_dir_baton_t*,int *) ;
 int mark_dir_edited (TYPE_4__*,struct merge_dir_baton_t*,char const*,int *) ;
 int properties_same_p (int*,int *,int *,int *) ;
 int record_skip (TYPE_4__*,char const*,int ,int ,int ,int ,int *) ;
 int record_tree_conflict (TYPE_4__*,char const*,int ,int ,int ,int ,int ,int ,int *,void*,int *) ;
 int record_update_delete (TYPE_4__*,int ,char const*,int ,int *) ;
 int store_path (int ,char const*) ;
 int svn_depth_infinity ;
 char* svn_dirent_join (int ,char const*,int *) ;
 int svn_error_clear (TYPE_3__*) ;
 TYPE_3__* svn_error_trace (TYPE_3__*) ;
 scalar_t__ svn_hash_gets (int *,int ) ;
 int svn_node_dir ;
 int svn_node_none ;
 int svn_wc_conflict_action_delete ;
 int svn_wc_conflict_reason_edited ;
 TYPE_3__* svn_wc_delete4 (int ,char const*,int,int,int ,int ,int *,int *,int *) ;
 int svn_wc_get_default_ignores (int **,int ,int *) ;
 int svn_wc_notify_update_shadowed_delete ;
 int svn_wc_prop_list2 (int **,int ,char const*,int *,int *) ;
 TYPE_3__* svn_wc_walk_status (int ,char const*,int ,void*,int,void*,int *,int ,struct dir_delete_baton_t*,int ,int ,int *) ;
 int verify_touched_by_del_check ;

__attribute__((used)) static svn_error_t *
merge_dir_deleted(const char *relpath,
                  const svn_diff_source_t *left_source,
                            apr_hash_t *left_props,
                  void *dir_baton,
                  const struct svn_diff_tree_processor_t *processor,
                  apr_pool_t *scratch_pool)
{
  merge_cmd_baton_t *merge_b = processor->baton;
  struct merge_dir_baton_t *db = dir_baton;
  const char *local_abspath = svn_dirent_join(merge_b->target->abspath,
                                              relpath, scratch_pool);
  svn_boolean_t same;
  apr_hash_t *working_props;

  SVN_ERR(handle_pending_notifications(merge_b, db, scratch_pool));
  SVN_ERR(mark_dir_edited(merge_b, db, local_abspath, scratch_pool));

  if (db->shadowed)
    {
      if (db->tree_conflict_reason == CONFLICT_REASON_NONE)
        {

          SVN_ERR(record_skip(merge_b, local_abspath, svn_node_dir,
                              svn_wc_notify_update_shadowed_delete,
                              db->skip_reason, db->parent_baton,
                              scratch_pool));
        }

      return SVN_NO_ERROR;
    }


  if (merge_b->record_only)
    {
      return SVN_NO_ERROR;
    }

  SVN_ERR(svn_wc_prop_list2(&working_props,
                            merge_b->ctx->wc_ctx, local_abspath,
                            scratch_pool, scratch_pool));

  if (merge_b->force_delete)
    {


      same = TRUE;
    }
  else
    {
      struct dir_delete_baton_t *delb;


      SVN_ERR(properties_same_p(&same, left_props, working_props,
                                scratch_pool));
      delb = db->delete_state;
      assert(delb != ((void*)0));

      if (! same)
        {
          delb->found_edit = TRUE;
        }
      else
        {
          store_path(delb->compared_abspaths, local_abspath);
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

          SVN_ERR(svn_wc_get_default_ignores(&ignores, merge_b->ctx->config,
                                             scratch_pool));







          err = svn_wc_walk_status(merge_b->ctx->wc_ctx, local_abspath,
                                   svn_depth_infinity, TRUE ,
                                   FALSE ,
                                   TRUE , ignores,
                                   verify_touched_by_del_check, delb,
                                   merge_b->ctx->cancel_func,
                                   merge_b->ctx->cancel_baton,
                                   scratch_pool);

          if (err)
            {
              if (err->apr_err != SVN_ERR_CEASE_INVOCATION)
                return svn_error_trace(err);

              svn_error_clear(err);
            }

          same = ! delb->found_edit;
        }
    }

  if (same && !merge_b->dry_run)
    {
      svn_error_t *err;

      err = svn_wc_delete4(merge_b->ctx->wc_ctx, local_abspath,
                           FALSE , FALSE ,
                           merge_b->ctx->cancel_func,
                           merge_b->ctx->cancel_baton,
                           ((void*)0), ((void*)0) ,
                           scratch_pool);

      if (err)
        {
          if (err->apr_err != SVN_ERR_WC_LEFT_LOCAL_MOD)
            return svn_error_trace(err);

          svn_error_clear(err);
          same = FALSE;
        }
    }

  if (! same)
    {







      SVN_ERR(record_tree_conflict(merge_b, local_abspath, db->parent_baton,
                                   svn_node_dir,
                                   svn_node_dir,
                                   svn_node_none,
                                   svn_wc_conflict_action_delete,
                                   svn_wc_conflict_reason_edited,
                                   ((void*)0), TRUE,
                                   scratch_pool));
    }
  else
    {

      if (working_props
          && svn_hash_gets(working_props, SVN_PROP_MERGEINFO))
        {
          alloc_and_store_path(&merge_b->paths_with_deleted_mergeinfo,
                               local_abspath, merge_b->pool);
        }

      SVN_ERR(record_update_delete(merge_b, db->parent_baton, local_abspath,
                                   svn_node_dir, scratch_pool));
    }

  return SVN_NO_ERROR;
}

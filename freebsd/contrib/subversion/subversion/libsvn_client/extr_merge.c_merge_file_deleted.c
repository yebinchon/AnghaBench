
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int svn_diff_source_t ;
typedef void* svn_boolean_t ;
struct svn_diff_tree_processor_t {TYPE_4__* baton; } ;
struct merge_file_baton_t {scalar_t__ tree_conflict_reason; TYPE_6__* parent_baton; int skip_reason; scalar_t__ shadowed; } ;
struct TYPE_15__ {int pool; int paths_with_deleted_mergeinfo; TYPE_3__* ctx; int dry_run; scalar_t__ force_delete; scalar_t__ record_only; TYPE_1__* target; } ;
typedef TYPE_4__ merge_cmd_baton_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_16__ {TYPE_2__* delete_state; } ;
struct TYPE_14__ {int cancel_baton; int cancel_func; int wc_ctx; } ;
struct TYPE_13__ {void* found_edit; int compared_abspaths; } ;
struct TYPE_12__ {int abspath; } ;


 scalar_t__ CONFLICT_REASON_NONE ;
 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 void* TRUE ;
 int alloc_and_store_path (int *,char const*,int ) ;
 int files_same_p (void**,char const*,int *,char const*,int ,int *) ;
 int mark_file_edited (TYPE_4__*,struct merge_file_baton_t*,char const*,int *) ;
 int record_skip (TYPE_4__*,char const*,int ,int ,int ,TYPE_6__*,int *) ;
 int record_tree_conflict (TYPE_4__*,char const*,TYPE_6__*,int ,int ,int ,int ,int ,int *,void*,int *) ;
 int record_update_delete (TYPE_4__*,TYPE_6__*,char const*,int ,int *) ;
 int store_path (int ,char const*) ;
 char* svn_dirent_join (int ,char const*,int *) ;
 int svn_node_file ;
 int svn_node_none ;
 int svn_wc_conflict_action_delete ;
 int svn_wc_conflict_reason_edited ;
 int svn_wc_delete4 (int ,char const*,int ,int ,int ,int ,int *,int *,int *) ;
 int svn_wc_notify_update_shadowed_delete ;

__attribute__((used)) static svn_error_t *
merge_file_deleted(const char *relpath,
                   const svn_diff_source_t *left_source,
                   const char *left_file,
                             apr_hash_t *left_props,
                   void *file_baton,
                   const struct svn_diff_tree_processor_t *processor,
                   apr_pool_t *scratch_pool)
{
  merge_cmd_baton_t *merge_b = processor->baton;
  struct merge_file_baton_t *fb = file_baton;
  const char *local_abspath = svn_dirent_join(merge_b->target->abspath,
                                              relpath, scratch_pool);
  svn_boolean_t same;

  SVN_ERR(mark_file_edited(merge_b, fb, local_abspath, scratch_pool));

  if (fb->shadowed)
    {
      if (fb->tree_conflict_reason == CONFLICT_REASON_NONE)
        {

          SVN_ERR(record_skip(merge_b, local_abspath, svn_node_file,
                              svn_wc_notify_update_shadowed_delete,
                              fb->skip_reason, fb->parent_baton,
                              scratch_pool));
        }

      return SVN_NO_ERROR;
    }


  if (merge_b->record_only)
    {
      return SVN_NO_ERROR;
    }


  if (merge_b->force_delete)
    same = TRUE;
  else
    SVN_ERR(files_same_p(&same, left_file, left_props,
                         local_abspath, merge_b->ctx->wc_ctx,
                         scratch_pool));

  if (fb->parent_baton
      && fb->parent_baton->delete_state)
    {
      if (same)
        {

          store_path(fb->parent_baton->delete_state->compared_abspaths,
                     local_abspath);
        }
      else
        {

          fb->parent_baton->delete_state->found_edit = TRUE;
        }

      return SVN_NO_ERROR;
    }
  else if (same)
    {
      if (!merge_b->dry_run)
        SVN_ERR(svn_wc_delete4(merge_b->ctx->wc_ctx, local_abspath,
                               FALSE , FALSE ,
                               merge_b->ctx->cancel_func,
                               merge_b->ctx->cancel_baton,
                               ((void*)0), ((void*)0) ,
                               scratch_pool));


      alloc_and_store_path(&merge_b->paths_with_deleted_mergeinfo,
                           local_abspath, merge_b->pool);


      SVN_ERR(record_update_delete(merge_b, fb->parent_baton, local_abspath,
                                   svn_node_file, scratch_pool));
    }
  else
    {





      SVN_ERR(record_tree_conflict(merge_b, local_abspath, fb->parent_baton,
                                   svn_node_file,
                                   svn_node_file,
                                   svn_node_none,
                                   svn_wc_conflict_action_delete,
                                   svn_wc_conflict_reason_edited,
                                   ((void*)0), TRUE,
                                   scratch_pool));
    }

  return SVN_NO_ERROR;
}

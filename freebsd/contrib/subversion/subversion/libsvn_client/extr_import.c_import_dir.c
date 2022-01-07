
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int lock_state; int prop_state; int content_state; int kind; } ;
typedef TYPE_1__ svn_wc_notify_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
struct TYPE_15__ {int (* close_directory ) (void*,int *) ;int (* add_directory ) (char const*,void*,int *,int ,int *,void**) ;} ;
typedef TYPE_2__ svn_delta_editor_t ;
typedef int svn_client_import_filter_func_t ;
struct TYPE_16__ {int notify_baton2; int (* notify_func2 ) (int ,TYPE_1__*,int *) ;} ;
typedef TYPE_3__ svn_client_ctx_t ;
typedef int svn_boolean_t ;
struct TYPE_17__ {int repos_changed; } ;
typedef TYPE_4__ import_ctx_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_array_header_t ;


 int SVN_ERR (int ) ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int get_filtered_children (int **,char const*,int *,int *,int *,int ,void*,TYPE_3__*,int *,int *) ;
 int import_children (char const*,char const*,int *,TYPE_2__ const*,void*,int ,int *,int *,int ,int ,int ,int ,void*,TYPE_4__*,TYPE_3__*,int *) ;
 int stub1 (char const*,void*,int *,int ,int *,void**) ;
 int stub2 (int ,TYPE_1__*,int *) ;
 int stub3 (void*,int *) ;
 int svn_node_dir ;
 int svn_path_check_valid (char const*,int *) ;
 TYPE_1__* svn_wc_create_notify (char const*,int ,int *) ;
 int svn_wc_notify_commit_added ;
 int svn_wc_notify_lock_state_inapplicable ;
 int svn_wc_notify_state_inapplicable ;

__attribute__((used)) static svn_error_t *
import_dir(const svn_delta_editor_t *editor,
           void *dir_baton,
           const char *local_abspath,
           const char *edit_path,
           svn_depth_t depth,
           apr_hash_t *excludes,
           apr_array_header_t *global_ignores,
           svn_boolean_t no_ignore,
           svn_boolean_t no_autoprops,
           svn_boolean_t ignore_unknown_node_types,
           svn_client_import_filter_func_t filter_callback,
           void *filter_baton,
           import_ctx_t *import_ctx,
           svn_client_ctx_t *ctx,
           apr_pool_t *pool)
{
  apr_hash_t *dirents;
  void *this_dir_baton;

  SVN_ERR(svn_path_check_valid(local_abspath, pool));
  SVN_ERR(get_filtered_children(&dirents, local_abspath, excludes, ((void*)0),
                                global_ignores, filter_callback,
                                filter_baton, ctx, pool, pool));


  {

    SVN_ERR(editor->add_directory(edit_path, dir_baton, ((void*)0),
                                  SVN_INVALID_REVNUM, pool, &this_dir_baton));


    import_ctx->repos_changed = TRUE;





    if (ctx->notify_func2)
      {
        svn_wc_notify_t *notify
          = svn_wc_create_notify(local_abspath, svn_wc_notify_commit_added,
                                 pool);
        notify->kind = svn_node_dir;
        notify->content_state = notify->prop_state
          = svn_wc_notify_state_inapplicable;
        notify->lock_state = svn_wc_notify_lock_state_inapplicable;
        ctx->notify_func2(ctx->notify_baton2, notify, pool);
      }
  }


  SVN_ERR(import_children(local_abspath, edit_path, dirents, editor,
                          this_dir_baton, depth, excludes, global_ignores,
                          no_ignore, no_autoprops, ignore_unknown_node_types,
                          filter_callback, filter_baton,
                          import_ctx, ctx, pool));


  SVN_ERR(editor->close_directory(this_dir_baton, pool));

  return SVN_NO_ERROR;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {char const* mime_type; int lock_state; int prop_state; int content_state; int kind; } ;
typedef TYPE_1__ svn_wc_notify_t ;
typedef int svn_string_t ;
struct TYPE_15__ {scalar_t__ special; } ;
typedef TYPE_2__ svn_io_dirent2_t ;
typedef int svn_error_t ;
struct TYPE_16__ {int (* close_file ) (void*,char const*,int *) ;int (* change_file_prop ) (void*,char const*,int const*,int *) ;int (* add_file ) (char const*,void*,int *,int ,int *,void**) ;} ;
typedef TYPE_3__ svn_delta_editor_t ;
struct TYPE_17__ {int notify_baton2; int (* notify_func2 ) (int ,TYPE_1__*,int *) ;} ;
typedef TYPE_4__ svn_client_ctx_t ;
typedef int svn_checksum_t ;
struct TYPE_18__ {int autoprops; int magic_cookie; int repos_changed; } ;
typedef TYPE_5__ import_ctx_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int SVN_ERR (int ) ;
 int SVN_INVALID_REVNUM ;
 int SVN_PROP_BOOLEAN_TRUE ;
 char const* SVN_PROP_SPECIAL ;
 int TRUE ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_make (int *) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 int * apr_hash_this_val (int *) ;
 int send_file_contents (int **,char const*,void*,TYPE_3__ const*,int *,int *) ;
 int stub1 (char const*,void*,int *,int ,int *,void**) ;
 int stub2 (void*,char const*,int const*,int *) ;
 int stub3 (int ,TYPE_1__*,int *) ;
 int stub4 (void*,char const*,int const*,int *) ;
 int stub5 (void*,char const*,int *) ;
 char* svn_checksum_to_cstring (int *,int *) ;
 int svn_client__get_paths_auto_props (int **,char const**,char const*,int ,int ,TYPE_4__*,int *,int *) ;
 int * svn_error_trace (int ) ;
 int const* svn_hash_gets (int *,char const*) ;
 int svn_hash_sets (int *,char const*,int ) ;
 int svn_node_file ;
 int svn_path_check_valid (char const*,int *) ;
 int svn_string_create (int ,int *) ;
 TYPE_1__* svn_wc_create_notify (char const*,int ,int *) ;
 int svn_wc_notify_commit_added ;
 int svn_wc_notify_lock_state_inapplicable ;
 int svn_wc_notify_state_inapplicable ;

__attribute__((used)) static svn_error_t *
import_file(const svn_delta_editor_t *editor,
            void *dir_baton,
            const char *local_abspath,
            const char *edit_path,
            const svn_io_dirent2_t *dirent,
            import_ctx_t *import_ctx,
            svn_client_ctx_t *ctx,
            apr_pool_t *pool)
{
  void *file_baton;
  const char *mimetype = ((void*)0);
  svn_checksum_t *result_md5_checksum;
  const char *text_checksum;
  apr_hash_t* properties;
  apr_hash_index_t *hi;

  SVN_ERR(svn_path_check_valid(local_abspath, pool));


  SVN_ERR(editor->add_file(edit_path, dir_baton, ((void*)0), SVN_INVALID_REVNUM,
                           pool, &file_baton));


  import_ctx->repos_changed = TRUE;

  if (! dirent->special)
    {

      SVN_ERR(svn_client__get_paths_auto_props(&properties, &mimetype,
                                               local_abspath,
                                               import_ctx->magic_cookie,
                                               import_ctx->autoprops,
                                               ctx, pool, pool));
    }
  else
    properties = apr_hash_make(pool);

  if (properties)
    {
      for (hi = apr_hash_first(pool, properties); hi; hi = apr_hash_next(hi))
        {
          const char *pname = apr_hash_this_key(hi);
          const svn_string_t *pval = apr_hash_this_val(hi);

          SVN_ERR(editor->change_file_prop(file_baton, pname, pval, pool));
        }
    }

  if (ctx->notify_func2)
    {
      svn_wc_notify_t *notify
        = svn_wc_create_notify(local_abspath, svn_wc_notify_commit_added,
                               pool);
      notify->kind = svn_node_file;
      notify->mime_type = mimetype;
      notify->content_state = notify->prop_state
        = svn_wc_notify_state_inapplicable;
      notify->lock_state = svn_wc_notify_lock_state_inapplicable;
      ctx->notify_func2(ctx->notify_baton2, notify, pool);
    }




  if (dirent->special)
    {
      svn_hash_sets(properties, SVN_PROP_SPECIAL,
                    svn_string_create(SVN_PROP_BOOLEAN_TRUE, pool));
      SVN_ERR(editor->change_file_prop(file_baton, SVN_PROP_SPECIAL,
                                       svn_hash_gets(properties,
                                                     SVN_PROP_SPECIAL),
                                       pool));
    }


  SVN_ERR(send_file_contents(&result_md5_checksum, local_abspath,
                             file_baton, editor, properties, pool));


  text_checksum = svn_checksum_to_cstring(result_md5_checksum, pool);
  return svn_error_trace(editor->close_file(file_baton, text_checksum, pool));
}

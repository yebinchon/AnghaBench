
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {TYPE_3__* err; int kind; } ;
typedef TYPE_1__ svn_wc_notify_t ;
typedef int (* svn_wc_notify_func2_t ) (void*,TYPE_1__*,int *) ;
typedef int svn_wc_context_t ;
struct TYPE_16__ {scalar_t__ apr_err; } ;
typedef TYPE_3__ svn_error_t ;
typedef int svn_cancel_func_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 scalar_t__ SVN_ERR_WC_LEFT_LOCAL_MOD ;
 scalar_t__ SVN_ERR_WC_PATH_UNEXPECTED_STATUS ;
 TYPE_3__* SVN_NO_ERROR ;
 int TRUE ;
 int svn_dirent_split (char const**,char const**,char const*,int *) ;
 int svn_error_clear (TYPE_3__*) ;
 TYPE_3__* svn_error_trace (TYPE_3__*) ;
 int svn_io_file_del_none ;
 TYPE_3__* svn_io_file_rename2 (char const*,char const*,int ,int *) ;
 int svn_io_open_uniquely_named (int *,char const**,char const*,char const*,char*,int ,int *,int *) ;
 TYPE_3__* svn_io_remove_file2 (char const*,int ,int *) ;
 int svn_node_dir ;
 int svn_wc__acquire_write_lock (int *,int *,char const*,int ,int *,int *) ;
 TYPE_3__* svn_wc__external_remove (int *,char const*,char const*,int ,int ,void*,int *) ;
 TYPE_3__* svn_wc__rename_wc (int *,char const*,char const*,int *) ;
 TYPE_1__* svn_wc_create_notify (char const*,int ,int *) ;
 int svn_wc_notify_left_local_modifications ;

__attribute__((used)) static svn_error_t *
relegate_dir_external(svn_wc_context_t *wc_ctx,
                      const char *wri_abspath,
                      const char *local_abspath,
                      svn_cancel_func_t cancel_func,
                      void *cancel_baton,
                      svn_wc_notify_func2_t notify_func,
                      void *notify_baton,
                      apr_pool_t *scratch_pool)
{
  svn_error_t *err = SVN_NO_ERROR;

  SVN_ERR(svn_wc__acquire_write_lock(((void*)0), wc_ctx, local_abspath,
                                     FALSE, scratch_pool, scratch_pool));

  err = svn_wc__external_remove(wc_ctx, wri_abspath, local_abspath, FALSE,
                                cancel_func, cancel_baton, scratch_pool);
  if (err && (err->apr_err == SVN_ERR_WC_LEFT_LOCAL_MOD))
    {
      const char *parent_dir;
      const char *dirname;
      const char *new_path;

      svn_error_clear(err);
      err = SVN_NO_ERROR;

      svn_dirent_split(&parent_dir, &dirname, local_abspath, scratch_pool);


      SVN_ERR(svn_io_open_uniquely_named(((void*)0), &new_path,
                                         parent_dir, dirname, ".OLD",
                                         svn_io_file_del_none,
                                         scratch_pool, scratch_pool));
      svn_error_clear(svn_io_remove_file2(new_path, TRUE, scratch_pool));



      err = svn_wc__rename_wc(wc_ctx, local_abspath, new_path,
                              scratch_pool);

      if (err && err->apr_err == SVN_ERR_WC_PATH_UNEXPECTED_STATUS)
        {
          svn_error_clear(err);



          err = svn_io_file_rename2(local_abspath, new_path, FALSE, scratch_pool);
        }


      if (notify_func)
        {
          svn_wc_notify_t *notify;

          notify = svn_wc_create_notify(err ? local_abspath : new_path,
                                        svn_wc_notify_left_local_modifications,
                                        scratch_pool);
          notify->kind = svn_node_dir;
          notify->err = err;

          notify_func(notify_baton, notify, scratch_pool);
        }
    }

  return svn_error_trace(err);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_repos_t ;
typedef int svn_repos_authz_callback_t ;
typedef int svn_fs_txn_t ;
typedef int svn_error_t ;
typedef int svn_delta_editor_t ;
typedef int svn_commit_callback_t ;
typedef int svn_commit_callback2_t ;
typedef int apr_pool_t ;


 int svn_compat_wrap_commit_callback (int *,void**,int ,void*,int *) ;
 int * svn_repos_get_commit_editor4 (int const**,void**,int *,int *,char const*,char const*,char const*,char const*,int ,void*,int ,void*,int *) ;

svn_error_t *
svn_repos_get_commit_editor3(const svn_delta_editor_t **editor,
                             void **edit_baton,
                             svn_repos_t *repos,
                             svn_fs_txn_t *txn,
                             const char *repos_url,
                             const char *base_path,
                             const char *user,
                             const char *log_msg,
                             svn_commit_callback_t callback,
                             void *callback_baton,
                             svn_repos_authz_callback_t authz_callback,
                             void *authz_baton,
                             apr_pool_t *pool)
{
  svn_commit_callback2_t callback2;
  void *callback2_baton;

  svn_compat_wrap_commit_callback(&callback2, &callback2_baton,
                                  callback, callback_baton,
                                  pool);

  return svn_repos_get_commit_editor4(editor, edit_baton, repos, txn,
                                      repos_url, base_path, user,
                                      log_msg, callback2,
                                      callback2_baton, authz_callback,
                                      authz_baton, pool);
}

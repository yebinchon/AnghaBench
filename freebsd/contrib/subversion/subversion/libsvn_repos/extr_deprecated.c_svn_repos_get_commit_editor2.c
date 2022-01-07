
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_repos_t ;
typedef int svn_fs_txn_t ;
typedef int svn_error_t ;
typedef int svn_delta_editor_t ;
typedef int svn_commit_callback_t ;
typedef int apr_pool_t ;


 int * svn_repos_get_commit_editor3 (int const**,void**,int *,int *,char const*,char const*,char const*,char const*,int ,void*,int *,int *,int *) ;

svn_error_t *
svn_repos_get_commit_editor2(const svn_delta_editor_t **editor,
                             void **edit_baton,
                             svn_repos_t *repos,
                             svn_fs_txn_t *txn,
                             const char *repos_url,
                             const char *base_path,
                             const char *user,
                             const char *log_msg,
                             svn_commit_callback_t callback,
                             void *callback_baton,
                             apr_pool_t *pool)
{
  return svn_repos_get_commit_editor3(editor, edit_baton, repos, txn,
                                      repos_url, base_path, user,
                                      log_msg, callback, callback_baton,
                                      ((void*)0), ((void*)0), pool);
}

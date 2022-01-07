
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_repos_t ;
typedef int svn_repos_authz_callback_t ;
typedef int svn_fs_txn_t ;
typedef int svn_error_t ;
typedef int svn_delta_editor_t ;
typedef int svn_commit_callback2_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_PROP_REVISION_AUTHOR ;
 int SVN_PROP_REVISION_LOG ;
 int * apr_hash_make (int *) ;
 int svn_hash_sets (int *,int ,int ) ;
 int * svn_repos_get_commit_editor5 (int const**,void**,int *,int *,char const*,char const*,int *,int ,void*,int ,void*,int *) ;
 int svn_string_create (char const*,int *) ;

svn_error_t *
svn_repos_get_commit_editor4(const svn_delta_editor_t **editor,
                             void **edit_baton,
                             svn_repos_t *repos,
                             svn_fs_txn_t *txn,
                             const char *repos_url,
                             const char *base_path,
                             const char *user,
                             const char *log_msg,
                             svn_commit_callback2_t commit_callback,
                             void *commit_baton,
                             svn_repos_authz_callback_t authz_callback,
                             void *authz_baton,
                             apr_pool_t *pool)
{
  apr_hash_t *revprop_table = apr_hash_make(pool);
  if (user)
    svn_hash_sets(revprop_table, SVN_PROP_REVISION_AUTHOR,
                  svn_string_create(user, pool));
  if (log_msg)
    svn_hash_sets(revprop_table, SVN_PROP_REVISION_LOG,
                  svn_string_create(log_msg, pool));
  return svn_repos_get_commit_editor5(editor, edit_baton, repos, txn,
                                      repos_url, base_path, revprop_table,
                                      commit_callback, commit_baton,
                                      authz_callback, authz_baton, pool);
}

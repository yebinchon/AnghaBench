
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_repos_t ;
typedef int svn_fs_txn_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_PROP_REVISION_AUTHOR ;
 int SVN_PROP_REVISION_LOG ;
 int * apr_hash_make (int *) ;
 int svn_hash_sets (int *,int ,int ) ;
 int * svn_repos_fs_begin_txn_for_commit2 (int **,int *,int ,int *,int *) ;
 int svn_string_create (char const*,int *) ;

svn_error_t *
svn_repos_fs_begin_txn_for_commit(svn_fs_txn_t **txn_p,
                                  svn_repos_t *repos,
                                  svn_revnum_t rev,
                                  const char *author,
                                  const char *log_msg,
                                  apr_pool_t *pool)
{
  apr_hash_t *revprop_table = apr_hash_make(pool);
  if (author)
    svn_hash_sets(revprop_table, SVN_PROP_REVISION_AUTHOR,
                  svn_string_create(author, pool));
  if (log_msg)
    svn_hash_sets(revprop_table, SVN_PROP_REVISION_LOG,
                  svn_string_create(log_msg, pool));
  return svn_repos_fs_begin_txn_for_commit2(txn_p, repos, rev, revprop_table,
                                            pool);
}

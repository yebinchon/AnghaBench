
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_revnum_t ;
struct TYPE_7__ {int client_capabilities; int fs; int hooks_env_path; } ;
typedef TYPE_2__ svn_repos_t ;
typedef int svn_fs_txn_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_array_header_t ;


 int SVN_ERR (int ) ;
 int SVN_FS_TXN_CHECK_LOCKS ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_REVISION_AUTHOR ;
 int * svn_error_compose_create (int *,int ) ;
 int svn_fs_abort_txn (int *,int *) ;
 int svn_fs_begin_txn2 (int **,int ,int ,int ,int *) ;
 int * svn_fs_txn_name (char const**,int *,int *) ;
 TYPE_1__* svn_hash_gets (int *,int ) ;
 int * svn_prop_hash_to_array (int *,int *) ;
 int * svn_repos__hooks_start_commit (TYPE_2__*,int *,int *,int ,char const*,int *) ;
 int svn_repos__parse_hooks_env (int **,int ,int *,int *) ;
 int * svn_repos_fs_change_txn_props (int *,int *,int *) ;

svn_error_t *
svn_repos_fs_begin_txn_for_commit2(svn_fs_txn_t **txn_p,
                                   svn_repos_t *repos,
                                   svn_revnum_t rev,
                                   apr_hash_t *revprop_table,
                                   apr_pool_t *pool)
{
  apr_array_header_t *revprops;
  const char *txn_name;
  svn_string_t *author = svn_hash_gets(revprop_table, SVN_PROP_REVISION_AUTHOR);
  apr_hash_t *hooks_env;
  svn_error_t *err;
  svn_fs_txn_t *txn;


  SVN_ERR(svn_repos__parse_hooks_env(&hooks_env, repos->hooks_env_path,
                                     pool, pool));



  SVN_ERR(svn_fs_begin_txn2(&txn, repos->fs, rev,
                            SVN_FS_TXN_CHECK_LOCKS, pool));
  err = svn_fs_txn_name(&txn_name, txn, pool);
  if (err)
    return svn_error_compose_create(err, svn_fs_abort_txn(txn, pool));




  revprops = svn_prop_hash_to_array(revprop_table, pool);
  err = svn_repos_fs_change_txn_props(txn, revprops, pool);
  if (err)
    return svn_error_compose_create(err, svn_fs_abort_txn(txn, pool));


  err = svn_repos__hooks_start_commit(repos, hooks_env,
                                      author ? author->data : ((void*)0),
                                      repos->client_capabilities, txn_name,
                                      pool);
  if (err)
    return svn_error_compose_create(err, svn_fs_abort_txn(txn, pool));


  *txn_p = txn;
  return SVN_NO_ERROR;
}

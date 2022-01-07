
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct revision_proplist_args {int rev; int ** table_p; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int * apr_hash_make (int *) ;
 int svn_fs__check_fs (int *,int ) ;
 int svn_fs_base__retry_txn (int *,int ,struct revision_proplist_args*,int ,int *) ;
 int txn_body_revision_proplist ;

svn_error_t *
svn_fs_base__revision_proplist(apr_hash_t **table_p,
                               svn_fs_t *fs,
                               svn_revnum_t rev,
                               svn_boolean_t refresh,
                               apr_pool_t *result_pool,
                               apr_pool_t *scratch_pool)
{
  struct revision_proplist_args args;
  apr_hash_t *table;

  SVN_ERR(svn_fs__check_fs(fs, TRUE));

  args.table_p = &table;
  args.rev = rev;
  SVN_ERR(svn_fs_base__retry_txn(fs, txn_body_revision_proplist, &args,
                                 FALSE, result_pool));

  *table_p = table ? table : apr_hash_make(result_pool);
  return SVN_NO_ERROR;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_t ;
typedef int svn_error_t ;
struct list_transactions_args {int * pool; int ** names_p; } ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int svn_fs__check_fs (int *,int ) ;
 int svn_fs_base__retry (int *,int ,struct list_transactions_args*,int ,int *) ;
 int txn_body_list_transactions ;

svn_error_t *
svn_fs_base__list_transactions(apr_array_header_t **names_p,
                               svn_fs_t *fs,
                               apr_pool_t *pool)
{
  apr_array_header_t *names;
  struct list_transactions_args args;

  SVN_ERR(svn_fs__check_fs(fs, TRUE));

  args.names_p = &names;
  args.pool = pool;
  SVN_ERR(svn_fs_base__retry(fs, txn_body_list_transactions, &args,
                             FALSE, pool));

  *names_p = names;
  return SVN_NO_ERROR;
}

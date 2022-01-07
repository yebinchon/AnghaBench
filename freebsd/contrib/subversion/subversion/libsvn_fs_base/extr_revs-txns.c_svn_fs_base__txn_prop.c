
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_string_t ;
struct TYPE_3__ {int id; int * fs; } ;
typedef TYPE_1__ svn_fs_txn_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
struct txn_proplist_args {int id; int ** table_p; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int svn_fs__check_fs (int *,int ) ;
 int svn_fs_base__retry_txn (int *,int ,struct txn_proplist_args*,int ,int *) ;
 int * svn_hash_gets (int *,char const*) ;
 int txn_body_txn_proplist ;

svn_error_t *
svn_fs_base__txn_prop(svn_string_t **value_p,
                      svn_fs_txn_t *txn,
                      const char *propname,
                      apr_pool_t *pool)
{
  struct txn_proplist_args args;
  apr_hash_t *table;
  svn_fs_t *fs = txn->fs;

  SVN_ERR(svn_fs__check_fs(fs, TRUE));


  args.table_p = &table;
  args.id = txn->id;
  SVN_ERR(svn_fs_base__retry_txn(fs, txn_body_txn_proplist, &args,
                                 FALSE, pool));


  *value_p = svn_hash_gets(table, propname);

  return SVN_NO_ERROR;
}

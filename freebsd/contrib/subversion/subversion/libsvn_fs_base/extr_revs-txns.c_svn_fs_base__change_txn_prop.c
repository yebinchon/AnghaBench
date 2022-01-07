
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
struct change_txn_prop_args {char const* name; int const* value; int id; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int TRUE ;
 int svn_fs__check_fs (int *,int ) ;
 int * svn_fs_base__retry_txn (int *,int ,struct change_txn_prop_args*,int ,int *) ;
 int txn_body_change_txn_prop ;

svn_error_t *
svn_fs_base__change_txn_prop(svn_fs_txn_t *txn,
                             const char *name,
                             const svn_string_t *value,
                             apr_pool_t *pool)
{
  struct change_txn_prop_args args;
  svn_fs_t *fs = txn->fs;

  SVN_ERR(svn_fs__check_fs(fs, TRUE));

  args.id = txn->id;
  args.name = name;
  args.value = value;
  return svn_fs_base__retry_txn(fs, txn_body_change_txn_prop, &args,
                                TRUE, pool);
}

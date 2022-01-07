
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int pool; } ;
typedef TYPE_1__ trail_t ;
struct TYPE_15__ {int data; } ;
typedef TYPE_2__ svn_string_t ;
typedef int svn_revnum_t ;
struct TYPE_16__ {char* id; int * fs; } ;
typedef TYPE_3__ svn_fs_txn_t ;
typedef int svn_fs_t ;
typedef int svn_fs_id_t ;
typedef int svn_error_t ;
struct commit_args {int new_rev; TYPE_3__* txn; } ;
typedef int dag_node_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_FS_TXN_OUT_OF_DATE ;
 int _ (char*) ;
 int * svn_error_createf (int ,int *,int ,char const*,int ) ;
 int svn_fs_base__dag_check_mutable (int *,char*) ;
 int svn_fs_base__dag_clone_root (int **,int *,char*,TYPE_1__*,int ) ;
 int * svn_fs_base__dag_commit_txn (int *,TYPE_3__*,TYPE_1__*,int ) ;
 int svn_fs_base__dag_get_id (int *) ;
 int svn_fs_base__dag_txn_base_root (int **,int *,char const*,TYPE_1__*,int ) ;
 int svn_fs_base__dag_txn_root (int **,int *,char const*,TYPE_1__*,int ) ;
 int svn_fs_base__id_eq (int const*,int ) ;
 TYPE_2__* svn_fs_base__id_unparse (int const*,int ) ;
 int svn_fs_base__rev_get_root (int const**,int *,int ,TYPE_1__*,int ) ;
 int svn_fs_bdb__youngest_rev (int *,int *,TYPE_1__*,int ) ;
 int verify_locks (char const*,TYPE_1__*,int ) ;

__attribute__((used)) static svn_error_t *
txn_body_commit(void *baton, trail_t *trail)
{
  struct commit_args *args = baton;

  svn_fs_txn_t *txn = args->txn;
  svn_fs_t *fs = txn->fs;
  const char *txn_name = txn->id;

  svn_revnum_t youngest_rev;
  const svn_fs_id_t *y_rev_root_id;
  dag_node_t *txn_base_root_node, *txn_root_node;



  SVN_ERR(svn_fs_bdb__youngest_rev(&youngest_rev, fs, trail, trail->pool));



  SVN_ERR(svn_fs_base__rev_get_root(&y_rev_root_id, fs, youngest_rev,
                                    trail, trail->pool));
  SVN_ERR(svn_fs_base__dag_txn_base_root(&txn_base_root_node, fs, txn_name,
                                         trail, trail->pool));




  if (! svn_fs_base__id_eq(y_rev_root_id,
                           svn_fs_base__dag_get_id(txn_base_root_node)))
    {
      svn_string_t *id_str = svn_fs_base__id_unparse(y_rev_root_id,
                                                     trail->pool);
      return svn_error_createf
        (SVN_ERR_FS_TXN_OUT_OF_DATE, ((void*)0),
         _("Transaction '%s' out-of-date with respect to revision '%s'"),
         txn_name, id_str->data);
    }





  SVN_ERR(verify_locks(txn_name, trail, trail->pool));





  SVN_ERR(svn_fs_base__dag_txn_root(&txn_root_node, fs, txn_name,
                                    trail, trail->pool));
  if (!svn_fs_base__dag_check_mutable(txn_root_node, txn->id))
    {
      dag_node_t *clone;
      SVN_ERR(svn_fs_base__dag_clone_root(&clone, fs, txn->id,
                                          trail, trail->pool));
    }


  return svn_fs_base__dag_commit_txn(&(args->new_rev), txn, trail,
                                     trail->pool);
}

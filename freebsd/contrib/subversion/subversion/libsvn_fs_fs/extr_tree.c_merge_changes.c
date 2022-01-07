
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_stringbuf_t ;
struct TYPE_4__ {int * fs; } ;
typedef TYPE_1__ svn_fs_txn_t ;
typedef int svn_fs_t ;
typedef int svn_fs_fs__id_part_t ;
typedef int svn_error_t ;
typedef int dag_node_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_MALFUNCTION () ;
 int * SVN_NO_ERROR ;
 int merge (int *,char*,int *,int *,int *,int const*,int *,int *) ;
 int svn_fs_fs__dag_get_id (int *) ;
 int svn_fs_fs__dag_txn_base_root (int **,int *,int const*,int *) ;
 int svn_fs_fs__dag_txn_root (int **,int *,int const*,int *) ;
 scalar_t__ svn_fs_fs__id_eq (int ,int ) ;
 int * svn_fs_fs__txn_get_id (TYPE_1__*) ;

__attribute__((used)) static svn_error_t *
merge_changes(dag_node_t *ancestor_node,
              dag_node_t *source_node,
              svn_fs_txn_t *txn,
              svn_stringbuf_t *conflict,
              apr_pool_t *pool)
{
  dag_node_t *txn_root_node;
  svn_fs_t *fs = txn->fs;
  const svn_fs_fs__id_part_t *txn_id = svn_fs_fs__txn_get_id(txn);

  SVN_ERR(svn_fs_fs__dag_txn_root(&txn_root_node, fs, txn_id, pool));

  if (ancestor_node == ((void*)0))
    {
      SVN_ERR(svn_fs_fs__dag_txn_base_root(&ancestor_node, fs,
                                           txn_id, pool));
    }

  if (svn_fs_fs__id_eq(svn_fs_fs__dag_get_id(ancestor_node),
                       svn_fs_fs__dag_get_id(txn_root_node)))
    {



      SVN_ERR_MALFUNCTION();
    }
  else
    SVN_ERR(merge(conflict, "/", txn_root_node,
                  source_node, ancestor_node, txn_id, ((void*)0), pool));

  return SVN_NO_ERROR;
}

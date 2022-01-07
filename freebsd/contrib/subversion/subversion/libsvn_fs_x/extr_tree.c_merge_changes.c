
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_stringbuf_t ;
typedef int svn_revnum_t ;
typedef int svn_fs_x__txn_id_t ;
struct TYPE_4__ {int * fs; } ;
typedef TYPE_1__ svn_fs_txn_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int dag_node_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_MALFUNCTION () ;
 int * SVN_NO_ERROR ;
 int merge (int *,char*,int *,int *,int *,int ,int *,int *) ;
 int svn_fs_x__change_set_by_rev (int ) ;
 int svn_fs_x__change_set_by_txn (int ) ;
 int svn_fs_x__dag_related_node (int *,int *) ;
 int svn_fs_x__dag_root (int **,int *,int ,int *,int *) ;
 int svn_fs_x__get_base_rev (int *,int *,int ,int *) ;
 int svn_fs_x__txn_get_id (TYPE_1__*) ;

__attribute__((used)) static svn_error_t *
merge_changes(dag_node_t *ancestor_node,
              dag_node_t *source_node,
              svn_fs_txn_t *txn,
              svn_stringbuf_t *conflict,
              apr_pool_t *scratch_pool)
{
  dag_node_t *txn_root_node;
  svn_fs_t *fs = txn->fs;
  svn_fs_x__txn_id_t txn_id = svn_fs_x__txn_get_id(txn);

  SVN_ERR(svn_fs_x__dag_root(&txn_root_node, fs,
                             svn_fs_x__change_set_by_txn(txn_id),
                             scratch_pool, scratch_pool));

  if (ancestor_node == ((void*)0))
    {
      svn_revnum_t base_rev;
      SVN_ERR(svn_fs_x__get_base_rev(&base_rev, fs, txn_id, scratch_pool));
      SVN_ERR(svn_fs_x__dag_root(&ancestor_node, fs,
                                 svn_fs_x__change_set_by_rev(base_rev),
                                 scratch_pool, scratch_pool));
    }

  if (!svn_fs_x__dag_related_node(ancestor_node, txn_root_node))
    {



      SVN_ERR_MALFUNCTION();
    }
  else
    SVN_ERR(merge(conflict, "/", txn_root_node,
                  source_node, ancestor_node, txn_id, ((void*)0), scratch_pool));

  return SVN_NO_ERROR;
}

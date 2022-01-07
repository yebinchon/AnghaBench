
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int trail_t ;
typedef int svn_fs_t ;
typedef int svn_fs_id_t ;
typedef int svn_error_t ;
typedef int dag_node_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * svn_fs_base__dag_get_node (int **,int *,int const*,int *,int *) ;
 int svn_fs_base__get_txn_ids (int const**,int const**,int *,char const*,int *,int *) ;

svn_error_t *
svn_fs_base__dag_txn_root(dag_node_t **node_p,
                          svn_fs_t *fs,
                          const char *txn_id,
                          trail_t *trail,
                          apr_pool_t *pool)
{
  const svn_fs_id_t *root_id, *ignored;

  SVN_ERR(svn_fs_base__get_txn_ids(&root_id, &ignored, fs, txn_id,
                                   trail, pool));
  return svn_fs_base__dag_get_node(node_p, fs, root_id, trail, pool);
}

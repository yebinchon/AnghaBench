
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_t ;
typedef int svn_fs_id_t ;
typedef int svn_fs_fs__id_part_t ;
typedef int svn_error_t ;
typedef int dag_node_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int * svn_fs_fs__dag_get_node (int **,int *,int const*,int *) ;
 int svn_fs_fs__get_txn_ids (int const**,int const**,int *,int const*,int *) ;
 int svn_fs_fs__id_eq (int const*,int const*) ;

svn_error_t *
svn_fs_fs__dag_clone_root(dag_node_t **root_p,
                          svn_fs_t *fs,
                          const svn_fs_fs__id_part_t *txn_id,
                          apr_pool_t *pool)
{
  const svn_fs_id_t *base_root_id, *root_id;



  SVN_ERR(svn_fs_fs__get_txn_ids(&root_id, &base_root_id, fs, txn_id, pool));




  SVN_ERR_ASSERT(!svn_fs_fs__id_eq(root_id, base_root_id));







  return svn_fs_fs__dag_get_node(root_p, fs, root_id, pool);
}

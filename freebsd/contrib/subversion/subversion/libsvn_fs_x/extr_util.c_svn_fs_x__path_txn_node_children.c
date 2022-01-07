
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_x__id_t ;
typedef int svn_fs_t ;
typedef int apr_pool_t ;


 int PATH_EXT_CHILDREN ;
 char const* construct_txn_node_path (int *,int const*,int ,int *,int *) ;

const char *
svn_fs_x__path_txn_node_children(svn_fs_t *fs,
                                 const svn_fs_x__id_t *id,
                                 apr_pool_t *result_pool,
                                 apr_pool_t *scratch_pool)
{
  return construct_txn_node_path(fs, id, PATH_EXT_CHILDREN, result_pool,
                                 scratch_pool);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_path_change_kind_t ;
typedef int svn_fs_path_change2_t ;
typedef int svn_fs_id_t ;
typedef int apr_pool_t ;


 int * svn_fs__path_change_create_internal (int const*,int ,int *) ;

svn_fs_path_change2_t *
svn_fs_path_change2_create(const svn_fs_id_t *node_rev_id,
                           svn_fs_path_change_kind_t change_kind,
                           apr_pool_t *pool)
{
  return svn_fs__path_change_create_internal(node_rev_id, change_kind, pool);
}

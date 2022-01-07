
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_path_change_kind_t ;
typedef int svn_fs_path_change3_t ;
typedef int apr_pool_t ;


 int * svn_fs__path_change_create_internal2 (int ,int *) ;

svn_fs_path_change3_t *
svn_fs_path_change3_create(svn_fs_path_change_kind_t change_kind,
                           apr_pool_t *result_pool)
{
  return svn_fs__path_change_create_internal2(change_kind, result_pool);
}

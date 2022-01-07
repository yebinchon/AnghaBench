
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_fsfs_info_t ;
typedef int apr_pool_t ;


 void* apr_pmemdup (int *,int const*,int) ;

__attribute__((used)) static void *
fs_info_dup(const void *fsfs_info_void,
            apr_pool_t *result_pool)
{

  const svn_fs_fsfs_info_t *fsfs_info = fsfs_info_void;
  return apr_pmemdup(result_pool, fsfs_info, sizeof(*fsfs_info));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_fsx_info_t ;
typedef int apr_pool_t ;


 void* apr_pmemdup (int *,int const*,int) ;

__attribute__((used)) static void *
x_info_dup(const void *fsx_info_void,
           apr_pool_t *result_pool)
{

  const svn_fs_fsx_info_t *fsx_info = fsx_info_void;
  return apr_pmemdup(result_pool, fsx_info, sizeof(*fsx_info));
}

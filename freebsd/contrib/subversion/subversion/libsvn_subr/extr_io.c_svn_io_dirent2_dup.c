
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_io_dirent2_t ;
typedef int apr_pool_t ;


 int * apr_pmemdup (int *,int const*,int) ;

svn_io_dirent2_t *
svn_io_dirent2_dup(const svn_io_dirent2_t *item,
                   apr_pool_t *result_pool)
{
  return apr_pmemdup(result_pool,
                     item,
                     sizeof(*item));
}

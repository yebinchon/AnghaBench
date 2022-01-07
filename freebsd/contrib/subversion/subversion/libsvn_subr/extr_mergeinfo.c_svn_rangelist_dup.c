
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_rangelist_t ;
typedef int svn_merge_range_t ;
typedef int apr_pool_t ;


 int * ptr_array_dup (int const*,int,int *) ;

svn_rangelist_t *
svn_rangelist_dup(const svn_rangelist_t *rangelist, apr_pool_t *pool)
{
  return ptr_array_dup(rangelist, sizeof(svn_merge_range_t), pool);
}

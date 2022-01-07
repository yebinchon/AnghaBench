
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_merge_range_t ;
typedef int apr_pool_t ;


 int * apr_pmemdup (int *,int const*,int) ;

svn_merge_range_t *
svn_merge_range_dup(const svn_merge_range_t *range, apr_pool_t *pool)
{
  svn_merge_range_t *new_range = apr_pmemdup(pool, range, sizeof(*new_range));
  return new_range;
}

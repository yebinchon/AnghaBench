
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {void* implicit_mergeinfo; void* pre_merge_mergeinfo; scalar_t__ remaining_ranges; int abspath; } ;
typedef TYPE_1__ svn_client__merge_path_t ;
typedef int apr_pool_t ;


 TYPE_1__* apr_pmemdup (int *,TYPE_1__ const*,int) ;
 int apr_pstrdup (int *,int ) ;
 void* svn_mergeinfo_dup (void*,int *) ;
 scalar_t__ svn_rangelist_dup (scalar_t__,int *) ;

svn_client__merge_path_t *
svn_client__merge_path_dup(const svn_client__merge_path_t *old,
                           apr_pool_t *pool)
{
  svn_client__merge_path_t *new = apr_pmemdup(pool, old, sizeof(*old));

  new->abspath = apr_pstrdup(pool, old->abspath);
  if (new->remaining_ranges)
    new->remaining_ranges = svn_rangelist_dup(old->remaining_ranges, pool);
  if (new->pre_merge_mergeinfo)
    new->pre_merge_mergeinfo = svn_mergeinfo_dup(old->pre_merge_mergeinfo,
                                                 pool);
  if (new->implicit_mergeinfo)
    new->implicit_mergeinfo = svn_mergeinfo_dup(old->implicit_mergeinfo,
                                                pool);

  return new;
}

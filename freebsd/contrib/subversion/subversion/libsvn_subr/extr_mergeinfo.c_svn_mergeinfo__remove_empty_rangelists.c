
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ nelts; } ;
typedef TYPE_1__ svn_rangelist_t ;
typedef scalar_t__ svn_mergeinfo_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_index_t ;


 int FALSE ;
 int TRUE ;
 int * apr_hash_first (int *,scalar_t__) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 TYPE_1__* apr_hash_this_val (int *) ;
 int svn_hash_sets (scalar_t__,char const*,int *) ;

svn_boolean_t
svn_mergeinfo__remove_empty_rangelists(svn_mergeinfo_t mergeinfo,
                                       apr_pool_t *scratch_pool)
{
  apr_hash_index_t *hi;
  svn_boolean_t removed_some_ranges = FALSE;

  if (mergeinfo)
    {
      for (hi = apr_hash_first(scratch_pool, mergeinfo); hi;
           hi = apr_hash_next(hi))
        {
          const char *path = apr_hash_this_key(hi);
          svn_rangelist_t *rangelist = apr_hash_this_val(hi);

          if (rangelist->nelts == 0)
            {
              svn_hash_sets(mergeinfo, path, ((void*)0));
              removed_some_ranges = TRUE;
            }
        }
    }
  return removed_some_ranges;
}

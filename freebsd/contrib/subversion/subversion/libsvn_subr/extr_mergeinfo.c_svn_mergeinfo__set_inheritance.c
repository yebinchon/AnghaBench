
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_rangelist_t ;
typedef scalar_t__ svn_mergeinfo_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_index_t ;


 int * apr_hash_first (int *,scalar_t__) ;
 int * apr_hash_next (int *) ;
 int * apr_hash_this_val (int *) ;
 int svn_rangelist__set_inheritance (int *,int ) ;

void
svn_mergeinfo__set_inheritance(svn_mergeinfo_t mergeinfo,
                               svn_boolean_t inheritable,
                               apr_pool_t *scratch_pool)
{
  if (mergeinfo)
    {
      apr_hash_index_t *hi;

      for (hi = apr_hash_first(scratch_pool, mergeinfo);
           hi;
           hi = apr_hash_next(hi))
        {
          svn_rangelist_t *rangelist = apr_hash_this_val(hi);

          if (rangelist)
            svn_rangelist__set_inheritance(rangelist, inheritable);
        }
    }
  return;
}

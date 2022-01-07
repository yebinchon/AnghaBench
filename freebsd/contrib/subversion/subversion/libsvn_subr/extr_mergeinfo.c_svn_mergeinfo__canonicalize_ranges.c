
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_mergeinfo_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_index_t ;
typedef int apr_array_header_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * apr_hash_first (int *,int ) ;
 int * apr_hash_next (int *) ;
 int * apr_hash_this_val (int *) ;
 int svn_rangelist__canonicalize (int *,int *) ;

svn_error_t *
svn_mergeinfo__canonicalize_ranges(svn_mergeinfo_t mergeinfo,
                                   apr_pool_t *scratch_pool)
{
  apr_hash_index_t *hi;

  for (hi = apr_hash_first(scratch_pool, mergeinfo); hi; hi = apr_hash_next(hi))
    {
      apr_array_header_t *rl = apr_hash_this_val(hi);

      SVN_ERR(svn_rangelist__canonicalize(rl, scratch_pool));
    }

  return SVN_NO_ERROR;
}

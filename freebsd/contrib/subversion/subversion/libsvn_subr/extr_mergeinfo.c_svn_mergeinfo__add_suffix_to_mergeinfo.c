
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_rangelist_t ;
typedef int svn_mergeinfo_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_index_t ;


 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 int * apr_hash_first (int *,int ) ;
 int apr_hash_make (int *) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 int * apr_hash_this_val (int *) ;
 int svn_fspath__join (char const*,char const*,int *) ;
 int svn_hash_sets (int ,int ,int *) ;
 scalar_t__ svn_relpath_is_canonical (char const*) ;

svn_error_t *
svn_mergeinfo__add_suffix_to_mergeinfo(svn_mergeinfo_t *out_mergeinfo,
                                       svn_mergeinfo_t mergeinfo,
                                       const char *suffix_relpath,
                                       apr_pool_t *result_pool,
                                       apr_pool_t *scratch_pool)
{
  apr_hash_index_t *hi;

  SVN_ERR_ASSERT(suffix_relpath && svn_relpath_is_canonical(suffix_relpath));

  *out_mergeinfo = apr_hash_make(result_pool);

  for (hi = apr_hash_first(scratch_pool, mergeinfo);
       hi;
       hi = apr_hash_next(hi))
    {
      const char *fspath = apr_hash_this_key(hi);
      svn_rangelist_t *rangelist = apr_hash_this_val(hi);

      svn_hash_sets(*out_mergeinfo,
                    svn_fspath__join(fspath, suffix_relpath, result_pool),
                    rangelist);
    }

  return SVN_NO_ERROR;
}

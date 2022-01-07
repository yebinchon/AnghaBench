
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_rangelist_t ;
typedef int svn_mergeinfo_t ;
typedef int svn_error_t ;
typedef int apr_ssize_t ;
typedef int apr_pool_t ;
typedef int apr_hash_index_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int apr_hash_count (int ) ;
 int * apr_hash_first (int *,int ) ;
 int * apr_hash_get (int ,char const*,int ) ;
 int * apr_hash_next (int *) ;
 int apr_hash_set (int ,char const*,int ,int *) ;
 int apr_hash_this (int *,void const**,int *,void*) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int svn_rangelist_merge2 (int *,int *,int *,int *) ;

svn_error_t *
svn_mergeinfo_merge2(svn_mergeinfo_t mergeinfo,
                     svn_mergeinfo_t changes,
                     apr_pool_t *result_pool,
                     apr_pool_t *scratch_pool)
{
  apr_hash_index_t *hi;
  apr_pool_t *iterpool;

  if (!apr_hash_count(changes))
    return SVN_NO_ERROR;

  iterpool = svn_pool_create(scratch_pool);
  for (hi = apr_hash_first(scratch_pool, changes); hi; hi = apr_hash_next(hi))
    {
      const char *key;
      apr_ssize_t klen;
      svn_rangelist_t *to_insert;
      svn_rangelist_t *target;


      apr_hash_this(hi, (const void**)&key, &klen, (void*)&to_insert);
      target = apr_hash_get(mergeinfo, key, klen);



      if (target)
        {
          SVN_ERR(svn_rangelist_merge2(target, to_insert, result_pool,
                                       iterpool));
          svn_pool_clear(iterpool);
        }
      else
        apr_hash_set(mergeinfo, key, klen, to_insert);
    }

  svn_pool_destroy(iterpool);

  return SVN_NO_ERROR;
}

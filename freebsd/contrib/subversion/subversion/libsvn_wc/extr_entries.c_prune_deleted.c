
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_entry_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_make (int *) ;
 int * apr_hash_next (int *) ;
 void* apr_hash_this_key (int *) ;
 int const* apr_hash_this_val (int *) ;
 int svn_hash_sets (int *,void const*,int const*) ;
 int svn_wc__entry_is_hidden (scalar_t__*,int const*) ;

__attribute__((used)) static svn_error_t *
prune_deleted(apr_hash_t **entries_pruned,
              apr_hash_t *entries_all,
              apr_pool_t *result_pool,
              apr_pool_t *scratch_pool)
{
  apr_hash_index_t *hi;

  if (!entries_all)
    {
      *entries_pruned = ((void*)0);
      return SVN_NO_ERROR;
    }



  for (hi = apr_hash_first(scratch_pool, entries_all);
       hi;
       hi = apr_hash_next(hi))
    {
      svn_boolean_t hidden;

      SVN_ERR(svn_wc__entry_is_hidden(&hidden,
                                      apr_hash_this_val(hi)));
      if (hidden)
        break;
    }

  if (! hi)
    {

      *entries_pruned = entries_all;
      return SVN_NO_ERROR;
    }


  *entries_pruned = apr_hash_make(result_pool);
  for (hi = apr_hash_first(scratch_pool, entries_all);
       hi;
       hi = apr_hash_next(hi))
    {
      const void *key = apr_hash_this_key(hi);
      const svn_wc_entry_t *entry = apr_hash_this_val(hi);
      svn_boolean_t hidden;

      SVN_ERR(svn_wc__entry_is_hidden(&hidden, entry));
      if (!hidden)
        svn_hash_sets(*entries_pruned, key, entry);
    }

  return SVN_NO_ERROR;
}

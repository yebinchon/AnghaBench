
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_ra_session_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int * apr_hash_first (int *,int *) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 int apr_hash_this_val (int *) ;
 int reparent_path (int *,char const*,int *) ;
 int * svn_hash__make (int *) ;
 int svn_hash_sets (int *,int ,int ) ;

__attribute__((used)) static apr_hash_t *
reparent_path_hash(svn_ra_session_t *ra_session,
                   apr_hash_t *paths,
                   apr_pool_t *result_pool,
                   apr_pool_t *scratch_pool)
{
  apr_hash_t *result;
  apr_hash_index_t *hi;

  if (!paths)
    return ((void*)0);

  result = svn_hash__make(result_pool);
  for (hi = apr_hash_first(scratch_pool, paths); hi; hi = apr_hash_next(hi))
    {
      const char *path = apr_hash_this_key(hi);
      svn_hash_sets(result,
                    reparent_path(ra_session, path, result_pool),
                    apr_hash_this_val(hi));
    }

  return result;
}

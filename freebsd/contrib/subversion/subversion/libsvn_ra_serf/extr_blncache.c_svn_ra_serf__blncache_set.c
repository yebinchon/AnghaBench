
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char const svn_revnum_t ;
struct TYPE_3__ {void* baseline_info; void* revnum_to_bc; } ;
typedef TYPE_1__ svn_ra_serf__blncache_t ;
typedef int svn_error_t ;
typedef int revision ;
typedef int apr_pool_t ;


 int APR_HASH_KEY_STRING ;
 scalar_t__ MAX_CACHE_SIZE ;
 scalar_t__ SVN_IS_VALID_REVNUM (char const) ;
 int * SVN_NO_ERROR ;
 scalar_t__ apr_hash_count (void*) ;
 void* apr_hash_make (int *) ;
 int * apr_hash_pool_get (void*) ;
 int apr_pstrdup (int *,char const*) ;
 int baseline_info_make (char const*,char const,int *) ;
 int hash_set_copy (void*,char const*,int,int ) ;
 int svn_pool_clear (int *) ;

svn_error_t *
svn_ra_serf__blncache_set(svn_ra_serf__blncache_t *blncache,
                          const char *baseline_url,
                          svn_revnum_t revision,
                          const char *bc_url,
                          apr_pool_t *scratch_pool)
{
  if (bc_url && SVN_IS_VALID_REVNUM(revision))
    {
      apr_pool_t *cache_pool = apr_hash_pool_get(blncache->revnum_to_bc);


      if (MAX_CACHE_SIZE < (apr_hash_count(blncache->baseline_info)
                            + apr_hash_count(blncache->revnum_to_bc)))
        {
          svn_pool_clear(cache_pool);
          blncache->revnum_to_bc = apr_hash_make(cache_pool);
          blncache->baseline_info = apr_hash_make(cache_pool);
        }

      hash_set_copy(blncache->revnum_to_bc, &revision, sizeof(revision),
                    apr_pstrdup(cache_pool, bc_url));

      if (baseline_url)
        {
          hash_set_copy(blncache->baseline_info, baseline_url,
                        APR_HASH_KEY_STRING,
                        baseline_info_make(bc_url, revision, cache_pool));
        }
    }

  return SVN_NO_ERROR;
}

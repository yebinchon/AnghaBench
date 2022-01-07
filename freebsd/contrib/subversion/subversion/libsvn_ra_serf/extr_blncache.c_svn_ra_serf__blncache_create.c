
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* baseline_info; void* revnum_to_bc; } ;
typedef TYPE_1__ svn_ra_serf__blncache_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 void* apr_hash_make (int *) ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 int * svn_pool_create (int *) ;

svn_error_t *
svn_ra_serf__blncache_create(svn_ra_serf__blncache_t **blncache_p,
                             apr_pool_t *pool)
{
  svn_ra_serf__blncache_t *blncache = apr_pcalloc(pool, sizeof(*blncache));
  apr_pool_t *cache_pool;



  cache_pool = svn_pool_create(pool);
  blncache->revnum_to_bc = apr_hash_make(cache_pool);
  blncache->baseline_info = apr_hash_make(cache_pool);

  *blncache_p = blncache;

  return SVN_NO_ERROR;
}

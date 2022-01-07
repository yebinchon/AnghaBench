
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int c; } ;
typedef TYPE_1__ svn_memcache_t ;
typedef int svn_error_t ;
typedef int svn_config_t ;
struct ams_baton {int * err; int * memcache_pool; int memcache; } ;
typedef int apr_uint16_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_pool_t ;


 int APR_INT16_MAX ;
 scalar_t__ APR_SUCCESS ;
 int SVN_CACHE_CONFIG_CATEGORY_MEMCACHED_SERVERS ;
 int SVN_ERR_NO_APR_MEMCACHE ;
 int SVN_ERR_TOO_MANY_MEMCACHED_SERVERS ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int add_memcache_server ;
 scalar_t__ apr_memcache_create (int *,int ,int ,int *) ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 int nop_enumerator ;
 int svn_config_enumerate2 (int *,int ,int ,struct ams_baton*,int *) ;
 int * svn_error_create (int ,int *,int *) ;
 int * svn_error_wrap_apr (scalar_t__,int ) ;

svn_error_t *
svn_cache__make_memcache_from_config(svn_memcache_t **memcache_p,
                                    svn_config_t *config,
                                    apr_pool_t *result_pool,
                                    apr_pool_t *scratch_pool)
{
  int server_count =
    svn_config_enumerate2(config,
                          SVN_CACHE_CONFIG_CATEGORY_MEMCACHED_SERVERS,
                          nop_enumerator, ((void*)0), scratch_pool);

  if (server_count == 0)
    {
      *memcache_p = ((void*)0);
      return SVN_NO_ERROR;
    }

  if (server_count > APR_INT16_MAX)
    return svn_error_create(SVN_ERR_TOO_MANY_MEMCACHED_SERVERS, ((void*)0), ((void*)0));
  {
    return svn_error_create(SVN_ERR_NO_APR_MEMCACHE, ((void*)0), ((void*)0));
  }

}

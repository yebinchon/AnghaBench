
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_memcache_t ;
typedef int svn_error_t ;
typedef int svn_cache__t ;
typedef int svn_cache__serialize_func_t ;
typedef int svn_cache__deserialize_func_t ;
typedef int apr_ssize_t ;
typedef int apr_pool_t ;


 int SVN_ERR_NO_APR_MEMCACHE ;
 int * svn_error_create (int ,int *,int *) ;

svn_error_t *
svn_cache__create_memcache(svn_cache__t **cache_p,
                          svn_memcache_t *memcache,
                          svn_cache__serialize_func_t serialize_func,
                          svn_cache__deserialize_func_t deserialize_func,
                          apr_ssize_t klen,
                          const char *prefix,
                          apr_pool_t *pool)
{
  return svn_error_create(SVN_ERR_NO_APR_MEMCACHE, ((void*)0), ((void*)0));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_4__ {int pretend_empty; int cache_internal; int * vtable; } ;
typedef TYPE_1__ svn_cache__t ;
typedef int apr_pool_t ;


 int FALSE ;
 int * SVN_NO_ERROR ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 int apr_pstrdup (int *,char const*) ;
 int null_cache_vtable ;

svn_error_t *
svn_cache__create_null(svn_cache__t **cache_p,
                       const char *id,
                       apr_pool_t *result_pool)
{
  svn_cache__t *cache = apr_pcalloc(result_pool, sizeof(*cache));
  cache->vtable = &null_cache_vtable;
  cache->cache_internal = apr_pstrdup(result_pool, id);
  cache->pretend_empty = FALSE;


  *cache_p = cache;
  return SVN_NO_ERROR;
}

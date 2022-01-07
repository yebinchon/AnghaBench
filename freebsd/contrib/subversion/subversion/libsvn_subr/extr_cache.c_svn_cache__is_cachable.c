
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int cache_internal; TYPE_1__* vtable; } ;
typedef TYPE_2__ svn_cache__t ;
typedef int svn_boolean_t ;
typedef int apr_size_t ;
struct TYPE_4__ {int (* is_cachable ) (int ,int ) ;} ;


 int FALSE ;
 int stub1 (int ,int ) ;

svn_boolean_t
svn_cache__is_cachable(svn_cache__t *cache,
                       apr_size_t size)
{

  if (cache == ((void*)0))
    return FALSE;

  return cache->vtable->is_cachable(cache->cache_internal, size);
}

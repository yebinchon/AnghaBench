
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_9__ {scalar_t__ failures; scalar_t__ writes; scalar_t__ hits; scalar_t__ reads; int cache_internal; TYPE_1__* vtable; } ;
typedef TYPE_2__ svn_cache__t ;
struct TYPE_10__ {scalar_t__ failures; scalar_t__ sets; scalar_t__ hits; scalar_t__ gets; } ;
typedef TYPE_3__ svn_cache__info_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
struct TYPE_8__ {int (* get_info ) (int ,TYPE_3__*,scalar_t__,int *) ;} ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int memset (TYPE_3__*,int ,int) ;
 int stub1 (int ,TYPE_3__*,scalar_t__,int *) ;

svn_error_t *
svn_cache__get_info(svn_cache__t *cache,
                    svn_cache__info_t *info,
                    svn_boolean_t reset,
                    apr_pool_t *result_pool)
{


  memset(info, 0, sizeof(*info));
  info->gets = cache->reads;
  info->hits = cache->hits;
  info->sets = cache->writes;
  info->failures = cache->failures;





  SVN_ERR((cache->vtable->get_info)(cache->cache_internal,
                                    info,
                                    reset,
                                    result_pool));



  if (reset)
    {
      cache->reads = 0;
      cache->hits = 0;
      cache->writes = 0;
      cache->failures = 0;
    }

  return SVN_NO_ERROR;
}

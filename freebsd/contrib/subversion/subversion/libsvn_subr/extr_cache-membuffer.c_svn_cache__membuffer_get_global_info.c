
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ segment_count; } ;
typedef TYPE_1__ svn_membuffer_t ;
struct TYPE_9__ {char* id; } ;
typedef TYPE_2__ svn_cache__info_t ;
typedef scalar_t__ apr_uint32_t ;
typedef int apr_pool_t ;


 TYPE_2__* apr_pcalloc (int *,int) ;
 TYPE_1__* svn_cache__get_global_membuffer_cache () ;
 int svn_error_clear (int ) ;
 int svn_membuffer_get_global_segment_info (TYPE_1__*,TYPE_2__*) ;

svn_cache__info_t *
svn_cache__membuffer_get_global_info(apr_pool_t *pool)
{
  apr_uint32_t i;

  svn_membuffer_t *membuffer = svn_cache__get_global_membuffer_cache();
  svn_cache__info_t *info = apr_pcalloc(pool, sizeof(*info));



  info->id = "membuffer globals";



  for (i = 0; i < membuffer->segment_count; ++i)
    svn_error_clear(svn_membuffer_get_global_segment_info(membuffer + i,
                                                          info));

  return info;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int svn_cache__info_t ;
typedef int svn_boolean_t ;
struct TYPE_3__ {int mutex; } ;
typedef TYPE_1__ inprocess_cache_t ;
typedef int apr_pool_t ;


 int SVN_MUTEX__WITH_LOCK (int ,int ) ;
 int * SVN_NO_ERROR ;
 int inprocess_cache_get_info_internal (TYPE_1__*,int *,int *) ;

__attribute__((used)) static svn_error_t *
inprocess_cache_get_info(void *cache_void,
                         svn_cache__info_t *info,
                         svn_boolean_t reset,
                         apr_pool_t *result_pool)
{
  inprocess_cache_t *cache = cache_void;

  SVN_MUTEX__WITH_LOCK(cache->mutex,
                       inprocess_cache_get_info_internal(cache,
                                                         info,
                                                         result_pool));

  return SVN_NO_ERROR;
}

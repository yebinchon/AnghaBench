
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_4__ {int mutex; } ;
typedef TYPE_1__ prefix_pool_t ;
typedef int apr_uint32_t ;


 int SVN_MUTEX__WITH_LOCK (int ,int ) ;
 int * SVN_NO_ERROR ;
 int prefix_pool_get_internal (int *,TYPE_1__*,char const*) ;

__attribute__((used)) static svn_error_t *
prefix_pool_get(apr_uint32_t *prefix_idx,
                prefix_pool_t *prefix_pool,
                const char *prefix)
{
  SVN_MUTEX__WITH_LOCK(prefix_pool->mutex,
                       prefix_pool_get_internal(prefix_idx, prefix_pool,
                                                prefix));

  return SVN_NO_ERROR;
}

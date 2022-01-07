
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct TYPE_3__ {int mutex; } ;
typedef TYPE_1__ inprocess_cache_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_MUTEX__WITH_LOCK (int ,int ) ;
 int * SVN_NO_ERROR ;
 int inprocess_cache_has_key_internal (int *,TYPE_1__*,void const*,int *) ;

__attribute__((used)) static svn_error_t *
inprocess_cache_has_key(svn_boolean_t *found,
                        void *cache_void,
                        const void *key,
                        apr_pool_t *scratch_pool)
{
  inprocess_cache_t *cache = cache_void;

  if (key)
    SVN_MUTEX__WITH_LOCK(cache->mutex,
                         inprocess_cache_has_key_internal(found,
                                                          cache,
                                                          key,
                                                          scratch_pool));
  else
    *found = FALSE;

  return SVN_NO_ERROR;
}

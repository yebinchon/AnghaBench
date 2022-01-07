
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct TYPE_3__ {int * (* deserialize_func ) (void**,char*,int ,int *) ;int mutex; } ;
typedef TYPE_1__ inprocess_cache_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_MUTEX__WITH_LOCK (int ,int ) ;
 int * SVN_NO_ERROR ;
 int inprocess_cache_get_internal (char**,int *,TYPE_1__*,void const*,int *) ;
 int * stub1 (void**,char*,int ,int *) ;

__attribute__((used)) static svn_error_t *
inprocess_cache_get(void **value_p,
                    svn_boolean_t *found,
                    void *cache_void,
                    const void *key,
                    apr_pool_t *result_pool)
{
  inprocess_cache_t *cache = cache_void;

  if (key)
    {
      char* buffer;
      apr_size_t size;

      SVN_MUTEX__WITH_LOCK(cache->mutex,
                           inprocess_cache_get_internal(&buffer,
                                                        &size,
                                                        cache,
                                                        key,
                                                        result_pool));


      *found = (buffer != ((void*)0));
      if (!buffer || !size)
        *value_p = ((void*)0);
      else
        return cache->deserialize_func(value_p, buffer, size, result_pool);
    }
  else
    {
      *value_p = ((void*)0);
      *found = FALSE;
    }

  return SVN_NO_ERROR;
}

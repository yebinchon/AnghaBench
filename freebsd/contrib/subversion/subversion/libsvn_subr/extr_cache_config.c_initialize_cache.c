
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_membuffer_t ;
typedef int svn_error_t ;
typedef int apr_uint64_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
typedef int apr_allocator_t ;
struct TYPE_4__ {scalar_t__ cache_size; } ;
struct TYPE_3__ {int single_threaded; } ;


 int FALSE ;
 int MIN (scalar_t__,int) ;
 scalar_t__ SVN_MAX_OBJECT_SIZE ;
 int * SVN_NO_ERROR ;
 scalar_t__ apr_allocator_create (int **) ;
 int apr_allocator_max_free_set (int *,int) ;
 int apr_allocator_owner_set (int *,int *) ;
 int apr_pool_create_ex (int **,int *,int *,int *) ;
 TYPE_2__ cache_settings ;
 int * svn_cache__membuffer_cache_create (int **,int ,int ,int ,int,int ,int *) ;
 TYPE_1__* svn_cache_config_get () ;
 int * svn_error_trace (int *) ;
 int svn_pool_destroy (int *) ;

__attribute__((used)) static svn_error_t *
initialize_cache(void *baton, apr_pool_t *unused_pool)
{
  svn_membuffer_t **cache_p = baton;
  svn_membuffer_t *cache = ((void*)0);




  apr_uint64_t cache_size = MIN(cache_settings.cache_size,
                                (apr_uint64_t)SVN_MAX_OBJECT_SIZE / 2);


  if (cache_size)
    {
      svn_error_t *err;


      apr_allocator_t *allocator = ((void*)0);
      apr_pool_t *pool = ((void*)0);

      if (apr_allocator_create(&allocator))
        return SVN_NO_ERROR;
      apr_allocator_max_free_set(allocator, 1);





      apr_pool_create_ex(&pool, ((void*)0), ((void*)0), allocator);
      if (pool == ((void*)0))
        return SVN_NO_ERROR;
      apr_allocator_owner_set(allocator, pool);

      err = svn_cache__membuffer_cache_create(
          &cache,
          (apr_size_t)cache_size,
          (apr_size_t)(cache_size / 5),
          0,
          ! svn_cache_config_get()->single_threaded,
          FALSE,
          pool);




      if (err)
        {

          svn_pool_destroy(pool);


          cache_settings.cache_size = 0;

          return svn_error_trace(err);
        }


      *cache_p = cache;
    }

  return SVN_NO_ERROR;
}

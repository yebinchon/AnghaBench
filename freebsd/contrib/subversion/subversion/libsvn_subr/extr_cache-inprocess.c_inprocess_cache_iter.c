
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_iter_apr_hash_cb_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct cache_iter_baton {void* user_baton; int user_cb; } ;
struct TYPE_2__ {int hash; int mutex; } ;
typedef TYPE_1__ inprocess_cache_t ;
typedef int apr_pool_t ;


 int SVN_MUTEX__WITH_LOCK (int ,int ) ;
 int * SVN_NO_ERROR ;
 int iter_cb ;
 int svn_iter_apr_hash (int *,int ,int ,struct cache_iter_baton*,int *) ;

__attribute__((used)) static svn_error_t *
inprocess_cache_iter(svn_boolean_t *completed,
                     void *cache_void,
                     svn_iter_apr_hash_cb_t user_cb,
                     void *user_baton,
                     apr_pool_t *scratch_pool)
{
  inprocess_cache_t *cache = cache_void;
  struct cache_iter_baton b;
  b.user_cb = user_cb;
  b.user_baton = user_baton;

  SVN_MUTEX__WITH_LOCK(cache->mutex,
                       svn_iter_apr_hash(completed, cache->hash,
                                         iter_cb, &b, scratch_pool));

  return SVN_NO_ERROR;
}

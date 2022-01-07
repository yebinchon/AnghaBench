
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_3__ {void* error_baton; int error_handler; } ;
typedef TYPE_1__ svn_cache__t ;
typedef int svn_cache__error_handler_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;

svn_error_t *
svn_cache__set_error_handler(svn_cache__t *cache,
                             svn_cache__error_handler_t handler,
                             void *baton,
                             apr_pool_t *scratch_pool)
{
  cache->error_handler = handler;
  cache->error_baton = baton;
  return SVN_NO_ERROR;
}

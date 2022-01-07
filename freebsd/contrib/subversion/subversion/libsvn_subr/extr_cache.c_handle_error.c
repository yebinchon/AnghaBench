
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_3__ {int error_baton; int * (* error_handler ) (int *,int ,int *) ;int failures; } ;
typedef TYPE_1__ svn_cache__t ;
typedef int apr_pool_t ;


 int * stub1 (int *,int ,int *) ;

__attribute__((used)) static svn_error_t *
handle_error(svn_cache__t *cache,
             svn_error_t *err,
             apr_pool_t *pool)
{
  if (err)
    {
      cache->failures++;
      if (cache->error_handler)
        err = (cache->error_handler)(err, cache->error_baton, pool);
    }

  return err;
}

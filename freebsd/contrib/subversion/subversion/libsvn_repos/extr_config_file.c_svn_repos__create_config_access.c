
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_repos_t ;
struct TYPE_4__ {int * pool; int * repos; } ;
typedef TYPE_1__ config_access_t ;
typedef int apr_pool_t ;


 TYPE_1__* apr_pcalloc (int *,int) ;
 int * svn_pool_create (int *) ;

config_access_t *
svn_repos__create_config_access(svn_repos_t *repos_hint,
                                apr_pool_t *result_pool)
{
  apr_pool_t *pool = svn_pool_create(result_pool);
  config_access_t *result = apr_pcalloc(pool, sizeof(*result));

  result->repos = repos_hint;
  result->pool = pool;

  return result;
}

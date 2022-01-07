
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_repos__config_pool_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int * svn_error_trace (int ) ;
 int svn_object_pool__create (int **,int ,int *) ;

svn_error_t *
svn_repos__config_pool_create(svn_repos__config_pool_t **config_pool,
                              svn_boolean_t thread_safe,
                              apr_pool_t *pool)
{
  return svn_error_trace(svn_object_pool__create(config_pool,
                                                 thread_safe, pool));
}

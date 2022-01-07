
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_cache__partial_getter_func_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int * SVN_NO_ERROR ;

__attribute__((used)) static svn_error_t *
null_cache_get_partial(void **value_p,
                       svn_boolean_t *found,
                       void *cache_void,
                       const void *key,
                       svn_cache__partial_getter_func_t func,
                       void *baton,
                       apr_pool_t *result_pool)
{

  *found = FALSE;
  return SVN_NO_ERROR;
}

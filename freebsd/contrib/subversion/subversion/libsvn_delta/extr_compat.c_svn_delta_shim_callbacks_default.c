
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_delta_shim_callbacks_t ;
typedef int apr_pool_t ;


 int * apr_pcalloc (int *,int) ;

svn_delta_shim_callbacks_t *
svn_delta_shim_callbacks_default(apr_pool_t *result_pool)
{
  svn_delta_shim_callbacks_t *shim_callbacks = apr_pcalloc(result_pool,
                                                     sizeof(*shim_callbacks));
  return shim_callbacks;
}

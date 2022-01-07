
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_auth_ssl_client_cert_prompt_func_t ;
typedef int svn_auth_provider_object_t ;
typedef int apr_pool_t ;


 int svn_auth_get_ssl_client_cert_prompt_provider (int **,int ,void*,int,int *) ;

void
svn_client_get_ssl_client_cert_prompt_provider
  (svn_auth_provider_object_t **provider,
   svn_auth_ssl_client_cert_prompt_func_t prompt_func,
   void *prompt_baton,
   int retry_limit,
   apr_pool_t *pool)
{
  svn_auth_get_ssl_client_cert_prompt_provider(provider, prompt_func,
                                               prompt_baton, retry_limit,
                                               pool);
}

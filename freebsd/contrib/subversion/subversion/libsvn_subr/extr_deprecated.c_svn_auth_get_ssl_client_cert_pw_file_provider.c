
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_auth_provider_object_t ;
typedef int apr_pool_t ;


 int svn_auth_get_ssl_client_cert_pw_file_provider2 (int **,int *,int *,int *) ;

void
svn_auth_get_ssl_client_cert_pw_file_provider
  (svn_auth_provider_object_t **provider,
   apr_pool_t *pool)
{
  svn_auth_get_ssl_client_cert_pw_file_provider2(provider, ((void*)0), ((void*)0), pool);
}

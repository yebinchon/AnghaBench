
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_AUTH__SIMPLE_PASSWORD_TYPE ;
 int * svn_auth__ssl_client_cert_pw_cache_set (int *,void*,void*,int *,char const*,int ,int ,int *) ;
 int svn_auth__ssl_client_cert_pw_set ;

__attribute__((used)) static svn_error_t *
ssl_client_cert_pw_file_save_credentials(svn_boolean_t *saved,
                                         void *credentials,
                                         void *provider_baton,
                                         apr_hash_t *parameters,
                                         const char *realmstring,
                                         apr_pool_t *pool)
{
  return svn_auth__ssl_client_cert_pw_cache_set(saved, credentials,
                                                provider_baton,
                                                parameters,
                                                realmstring,
                                                svn_auth__ssl_client_cert_pw_set,
                                                SVN_AUTH__SIMPLE_PASSWORD_TYPE,
                                                pool);
}

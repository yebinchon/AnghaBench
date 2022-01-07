
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_AUTH__SIMPLE_PASSWORD_TYPE ;
 int * svn_auth__simple_creds_cache_get (void**,void**,void*,int *,char const*,int ,int ,int *) ;
 int svn_auth__simple_password_get ;

__attribute__((used)) static svn_error_t *
simple_first_creds(void **credentials,
                   void **iter_baton,
                   void *provider_baton,
                   apr_hash_t *parameters,
                   const char *realmstring,
                   apr_pool_t *pool)
{
  return svn_auth__simple_creds_cache_get(credentials, iter_baton,
                                          provider_baton, parameters,
                                          realmstring,
                                          svn_auth__simple_password_get,
                                          SVN_AUTH__SIMPLE_PASSWORD_TYPE,
                                          pool);
}

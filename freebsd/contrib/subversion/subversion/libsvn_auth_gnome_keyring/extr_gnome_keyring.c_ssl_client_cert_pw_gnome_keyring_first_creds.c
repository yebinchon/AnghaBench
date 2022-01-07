
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_AUTH__GNOME_KEYRING_PASSWORD_TYPE ;
 int password_get_gnome_keyring ;
 int * svn_auth__ssl_client_cert_pw_cache_get (void**,void**,void*,int *,char const*,int ,int ,int *) ;

__attribute__((used)) static svn_error_t *
ssl_client_cert_pw_gnome_keyring_first_creds(void **credentials,
                                             void **iter_baton,
                                             void *provider_baton,
                                             apr_hash_t *parameters,
                                             const char *realmstring,
                                             apr_pool_t *pool)
{
  return svn_auth__ssl_client_cert_pw_cache_get(
             credentials, iter_baton, provider_baton, parameters, realmstring,
             password_get_gnome_keyring, SVN_AUTH__GNOME_KEYRING_PASSWORD_TYPE,
             pool);
}

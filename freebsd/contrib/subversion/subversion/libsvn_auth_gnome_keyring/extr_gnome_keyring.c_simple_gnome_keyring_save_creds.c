
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_AUTH__GNOME_KEYRING_PASSWORD_TYPE ;
 int password_set_gnome_keyring ;
 int * svn_auth__simple_creds_cache_set (int *,void*,void*,int *,char const*,int ,int ,int *) ;

__attribute__((used)) static svn_error_t *
simple_gnome_keyring_save_creds(svn_boolean_t *saved,
                                void *credentials,
                                void *provider_baton,
                                apr_hash_t *parameters,
                                const char *realmstring,
                                apr_pool_t *pool)
{
  return svn_auth__simple_creds_cache_set(saved, credentials,
                                          provider_baton, parameters,
                                          realmstring,
                                          password_set_gnome_keyring,
                                          SVN_AUTH__GNOME_KEYRING_PASSWORD_TYPE,
                                          pool);
}

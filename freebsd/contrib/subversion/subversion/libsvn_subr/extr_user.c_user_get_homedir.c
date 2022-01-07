
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;


 scalar_t__ APR_SUCCESS ;
 scalar_t__ apr_env_get (char**,char*,int *) ;
 scalar_t__ apr_uid_homepath_get (char**,char const*,int *) ;
 char* get_os_username (int *) ;
 char const* utf8_or_nothing (char*,int *) ;

__attribute__((used)) static const char *
user_get_homedir(apr_pool_t *pool)
{
  const char *username;
  char *homedir;

  if (apr_env_get(&homedir, "HOME", pool) == APR_SUCCESS)
    return utf8_or_nothing(homedir, pool);

  username = get_os_username(pool);
  if (username != ((void*)0) &&
      apr_uid_homepath_get(&homedir, username, pool) == APR_SUCCESS)
    return utf8_or_nothing(homedir, pool);

  return ((void*)0);
}

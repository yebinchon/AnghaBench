
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;


 char const* svn_dirent_canonicalize (char const*,int *) ;
 char* user_get_homedir (int *) ;

const char *
svn_user_get_homedir(apr_pool_t *pool)
{
  const char *homedir = user_get_homedir(pool);

  if (homedir)
    return svn_dirent_canonicalize(homedir, pool);

  return ((void*)0);
}

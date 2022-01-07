
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 char* apr_pstrdup (int *,char const*) ;
 int * svn_dirent_get_absolute (char const**,char const*,int *) ;
 scalar_t__ svn_path_is_url (char const*) ;

svn_error_t *
svn_path_get_absolute(const char **pabsolute,
                      const char *relative,
                      apr_pool_t *pool)
{
  if (svn_path_is_url(relative))
    {
      *pabsolute = apr_pstrdup(pool, relative);
      return SVN_NO_ERROR;
    }

  return svn_dirent_get_absolute(pabsolute, relative, pool);
}

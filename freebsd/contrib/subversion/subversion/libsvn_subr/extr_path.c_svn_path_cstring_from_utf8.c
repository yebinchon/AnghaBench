
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 char* apr_pstrdup (int *,char const*) ;
 int get_path_encoding (scalar_t__*,int *) ;
 int * svn_utf_cstring_from_utf8 (char const**,char const*,int *) ;

svn_error_t *
svn_path_cstring_from_utf8(const char **path_apr,
                           const char *path_utf8,
                           apr_pool_t *pool)
{

  svn_boolean_t path_is_utf8;
  SVN_ERR(get_path_encoding(&path_is_utf8, pool));
  if (path_is_utf8)

    {
      *path_apr = apr_pstrdup(pool, path_utf8);
      return SVN_NO_ERROR;
    }

  else
    return svn_utf_cstring_from_utf8(path_apr, path_utf8, pool);

}

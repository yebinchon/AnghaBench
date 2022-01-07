
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_VA_NULL ;
 void* apr_pstrcat (int *,char*,char const*,int ) ;
 int assert (int) ;
 int strlen (char const*) ;
 int svn_dirent_get_absolute (char const**,char const*,int *) ;
 int svn_dirent_is_canonical (char const*,int *) ;
 char* svn_path_uri_encode (char const*,int *) ;

svn_error_t *
svn_uri_get_file_url_from_dirent(const char **url,
                                 const char *dirent,
                                 apr_pool_t *pool)
{
  assert(svn_dirent_is_canonical(dirent, pool));

  SVN_ERR(svn_dirent_get_absolute(&dirent, dirent, pool));

  dirent = svn_path_uri_encode(dirent, pool);


  if (dirent[0] == '/' && dirent[1] == '\0')
    dirent = ((void*)0);

  *url = apr_pstrcat(pool, "file://", dirent, SVN_VA_NULL);
  return SVN_NO_ERROR;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;


 int * cstring_to_utf8 (char const**,char const*,int *) ;
 char const* svn_dirent_local_style (char const*,int *) ;
 int svn_error_clear (int *) ;

__attribute__((used)) static const char *
try_utf8_from_internal_style(const char *path, apr_pool_t *pool)
{
  svn_error_t *error;
  const char *path_utf8;


  if (path == ((void*)0))
    return "(NULL)";




  error = cstring_to_utf8(&path_utf8, path, pool);
  if (error)
    {


      svn_error_clear(error);
      path_utf8 = path;
    }



  return svn_dirent_local_style(path_utf8, pool);
}

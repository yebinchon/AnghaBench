
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 char* apr_palloc (int *,size_t) ;
 char const* apr_pstrmemdup (int *,char const*,size_t) ;
 scalar_t__ is_canonical_abspath (char const*,size_t) ;
 size_t strlen (char const*) ;

const char *
svn_fs__canonicalize_abspath(const char *path, apr_pool_t *pool)
{
  char *newpath;
  size_t path_len;
  size_t path_i = 0, newpath_i = 0;
  svn_boolean_t eating_slashes = FALSE;


  if (! path)
    return ((void*)0);


  if (! *path)
    return "/";


  path_len = strlen(path);
  if (is_canonical_abspath(path, path_len))
    return apr_pstrmemdup(pool, path, path_len);



  newpath = apr_palloc(pool, path_len + 2);


  if (*path != '/')
    {
      newpath[newpath_i++] = '/';
    }

  for (path_i = 0; path_i < path_len; path_i++)
    {
      if (path[path_i] == '/')
        {



          if (eating_slashes)
            continue;
          eating_slashes = TRUE;
        }
      else
        {


          if (eating_slashes)
            eating_slashes = FALSE;
        }


      newpath[newpath_i++] = path[path_i];
    }



  if ((newpath[newpath_i - 1] == '/') && (newpath_i > 1))
    newpath[newpath_i - 1] = '\0';
  else
    newpath[newpath_i] = '\0';

  return newpath;
}

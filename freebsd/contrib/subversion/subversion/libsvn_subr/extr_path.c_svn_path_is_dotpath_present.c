
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_boolean_t ;


 int FALSE ;
 int TRUE ;
 size_t strlen (char const*) ;
 int * strstr (char const*,char*) ;

svn_boolean_t
svn_path_is_dotpath_present(const char *path)
{
  size_t len;


  if (path[0] == '\0')
    return FALSE;


  if (path[0] == '.' && (path[1] == '\0' || path[1] == '/'))
    return TRUE;


  if (path[1] == '\0')
    return FALSE;


  if (strstr(path, "/./") != ((void*)0))
    return TRUE;


  len = strlen(path);
  return path[len - 2] == '/' && path[len - 1] == '.';
}

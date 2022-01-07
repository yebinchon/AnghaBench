
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
svn_path_is_backpath_present(const char *path)
{
  size_t len;


  if (path[0] == '\0' || path[1] == '\0')
    return FALSE;


  if (path[0] == '.' && path[1] == '.' && (path[2] == '\0' || path[2] == '/'))
    return TRUE;


  if (path[2] == '\0')
    return FALSE;


  if (strstr(path, "/../") != ((void*)0))
    return TRUE;


  len = strlen(path);
  return path[len - 3] == '/' && path[len - 2] == '.' && path[len - 1] == '.';
}

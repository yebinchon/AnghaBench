
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_boolean_t ;


 int FALSE ;
 char const SVN_PATH_LOCAL_SEPARATOR ;
 int TRUE ;
 size_t strspn (char const*,char*) ;

__attribute__((used)) static svn_boolean_t
repos_path_valid(const char *path)
{
  const char *s = path;

  while (*s)
    {

      while (*path && *path != '/' && *path != SVN_PATH_LOCAL_SEPARATOR)
        ++path;
      if (path - s == 2 && s[0] == '.' && s[1] == '.')
        return FALSE;



      while (*path && (*path == '/' || *path == SVN_PATH_LOCAL_SEPARATOR))
        ++path;
      s = path;
    }

  return TRUE;
}

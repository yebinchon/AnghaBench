
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_boolean_t ;
typedef size_t apr_size_t ;


 int FALSE ;
 int TRUE ;
 char* skip_uri_scheme (char const*) ;
 char* strchr (char const*,char) ;
 scalar_t__ svn_ctype_isxdigit (char const) ;
 int * svn_uri__char_validity ;

svn_boolean_t
svn_path_is_uri_safe(const char *path)
{
  apr_size_t i;


  path = skip_uri_scheme(path);


  if (! path)
    return FALSE;


  path = strchr(path, '/');




  if (path == ((void*)0))
    return TRUE;

  for (i = 0; path[i]; i++)
    {

      if (path[i] == '%')
        {
          if (svn_ctype_isxdigit(path[i + 1]) &&
              svn_ctype_isxdigit(path[i + 2]))
            {
              i += 2;
              continue;
            }
          return FALSE;
        }
      else if (! svn_uri__char_validity[((unsigned char)path[i])])
        {
          return FALSE;
        }
    }

  return TRUE;
}

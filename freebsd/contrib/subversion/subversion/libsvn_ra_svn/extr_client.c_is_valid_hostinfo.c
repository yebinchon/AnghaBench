
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_boolean_t ;


 int FALSE ;
 int TRUE ;
 int strchr (char*,char const) ;
 int svn_ctype_isalnum (char const) ;

__attribute__((used)) static svn_boolean_t
is_valid_hostinfo(const char *hostinfo)
{
  const char *p = hostinfo;

  if (p[0] == '-')
    return FALSE;

  while (*p)
    {
      if (!svn_ctype_isalnum(*p) && !strchr(":.-_[]@", *p))
        return FALSE;

      ++p;
    }

  return TRUE;
}

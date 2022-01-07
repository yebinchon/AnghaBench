
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_boolean_t ;


 int FALSE ;
 char const SVN_CTYPE_ASCII_COLON ;
 char const SVN_CTYPE_ASCII_DOT ;
 char const SVN_CTYPE_ASCII_MINUS ;
 char const SVN_CTYPE_ASCII_UNDERSCORE ;
 int TRUE ;
 scalar_t__ svn_ctype_isalnum (char const) ;
 scalar_t__ svn_ctype_isalpha (char const) ;

svn_boolean_t
svn_prop_name_is_valid(const char *prop_name)
{
  const char *p = prop_name;







  if (!(svn_ctype_isalpha(*p)
        || *p == SVN_CTYPE_ASCII_COLON
        || *p == SVN_CTYPE_ASCII_UNDERSCORE))
    return FALSE;
  p++;
  for (; *p; p++)
    {
      if (!(svn_ctype_isalnum(*p)
            || *p == SVN_CTYPE_ASCII_MINUS
            || *p == SVN_CTYPE_ASCII_DOT
            || *p == SVN_CTYPE_ASCII_COLON
            || *p == SVN_CTYPE_ASCII_UNDERSCORE))
        return FALSE;
    }
  return TRUE;
}

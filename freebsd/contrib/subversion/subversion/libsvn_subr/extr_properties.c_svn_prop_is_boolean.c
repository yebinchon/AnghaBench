
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_boolean_t ;


 int FALSE ;
 int SVN_PROP_EXECUTABLE ;
 int SVN_PROP_NEEDS_LOCK ;
 int SVN_PROP_SPECIAL ;
 int TRUE ;
 scalar_t__ strcmp (char const*,int ) ;

svn_boolean_t
svn_prop_is_boolean(const char *prop_name)
{



  if (strcmp(prop_name, SVN_PROP_EXECUTABLE) == 0
      || strcmp(prop_name, SVN_PROP_NEEDS_LOCK) == 0
      || strcmp(prop_name, SVN_PROP_SPECIAL) == 0)
    return TRUE;
  return FALSE;
}

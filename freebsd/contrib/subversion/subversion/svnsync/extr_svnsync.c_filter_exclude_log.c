
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_boolean_t ;


 int FALSE ;
 int SVN_PROP_REVISION_LOG ;
 int TRUE ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static svn_boolean_t
filter_exclude_log(const char *key)
{
  if (strcmp(key, SVN_PROP_REVISION_LOG) == 0)
    return TRUE;
  else
    return FALSE;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_boolean_t ;


 int FALSE ;
 int TRUE ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static svn_boolean_t
is_known_prop(const char *prop_name,
              const char *const *known_props)
{
  while (*known_props)
    {
      if (strcmp(prop_name, *known_props++) == 0)
        return TRUE;
    }
  return FALSE;
}

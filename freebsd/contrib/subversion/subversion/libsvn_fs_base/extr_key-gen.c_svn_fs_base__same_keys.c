
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_boolean_t ;


 int FALSE ;
 int TRUE ;
 scalar_t__ strcmp (char const*,char const*) ;

svn_boolean_t
svn_fs_base__same_keys(const char *a, const char *b)
{
  if (! (a || b))
    return TRUE;
  if (a && (! b))
    return FALSE;
  if ((! a) && b)
    return FALSE;
  return (strcmp(a, b) == 0);
}

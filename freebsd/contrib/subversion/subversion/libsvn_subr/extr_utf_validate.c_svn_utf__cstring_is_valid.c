
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_boolean_t ;


 int FALSE ;
 int strlen (char const*) ;
 int svn_utf__is_valid (char const*,int ) ;

svn_boolean_t
svn_utf__cstring_is_valid(const char *data)
{
  if (!data)
    return FALSE;

  return svn_utf__is_valid(data, strlen(data));
}

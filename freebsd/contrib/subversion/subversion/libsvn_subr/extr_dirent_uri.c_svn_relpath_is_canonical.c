
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_boolean_t ;


 int relpath_is_canonical (char const*) ;

svn_boolean_t
svn_relpath_is_canonical(const char *relpath)
{
  return relpath_is_canonical(relpath);
}

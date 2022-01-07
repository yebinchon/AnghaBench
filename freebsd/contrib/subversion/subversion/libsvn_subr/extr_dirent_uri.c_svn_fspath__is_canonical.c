
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_boolean_t ;


 scalar_t__ relpath_is_canonical (char const*) ;

svn_boolean_t
svn_fspath__is_canonical(const char *fspath)
{
  return fspath[0] == '/' && relpath_is_canonical(fspath + 1);
}

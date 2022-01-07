
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_boolean_t ;
typedef int apr_size_t ;



svn_boolean_t
svn_fspath__is_root(const char *fspath, apr_size_t len)
{

  return (len == 1 && fspath[0] == '/');
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_boolean_t ;


 scalar_t__ strncmp (char*,char const*,int) ;

svn_boolean_t
svn_path_is_repos_relative_url(const char *path)
{
  return (0 == strncmp("^/", path, 2));
}

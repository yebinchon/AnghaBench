
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 scalar_t__ svn_dirent_is_canonical (char const*,int *) ;
 scalar_t__ svn_relpath_is_canonical (char const*) ;
 scalar_t__ svn_uri_is_canonical (char const*,int *) ;

__attribute__((used)) static svn_boolean_t
svn_path_is_canonical_internal(const char *path, apr_pool_t *pool)
{
  return svn_uri_is_canonical(path, pool) ||
      svn_dirent_is_canonical(path, pool) ||
      svn_relpath_is_canonical(path);
}

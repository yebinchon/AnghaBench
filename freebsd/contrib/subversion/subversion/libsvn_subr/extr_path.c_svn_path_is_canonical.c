
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int svn_path_is_canonical_internal (char const*,int *) ;

svn_boolean_t
svn_path_is_canonical(const char *path, apr_pool_t *pool)
{
  return svn_path_is_canonical_internal(path, pool);
}

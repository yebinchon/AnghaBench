
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;


 char const* canonicalize (int ,char const*,int *) ;
 int type_relpath ;

const char *
svn_relpath_canonicalize(const char *relpath, apr_pool_t *pool)
{
  return canonicalize(type_relpath, relpath, pool);
}

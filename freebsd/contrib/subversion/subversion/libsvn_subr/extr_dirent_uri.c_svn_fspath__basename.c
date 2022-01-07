
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;


 int assert (int ) ;
 int * strchr (char const*,char) ;
 int svn_fspath__is_canonical (char const*) ;
 char* svn_relpath_basename (char const*,int *) ;

const char *
svn_fspath__basename(const char *fspath,
                     apr_pool_t *pool)
{
  const char *result;
  assert(svn_fspath__is_canonical(fspath));

  result = svn_relpath_basename(fspath + 1, pool);

  assert(strchr(result, '/') == ((void*)0));
  return result;
}

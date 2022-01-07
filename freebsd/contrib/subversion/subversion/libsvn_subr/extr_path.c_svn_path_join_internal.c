
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_size_t ;
typedef int apr_pool_t ;


 scalar_t__ SVN_PATH_IS_EMPTY (char const*) ;
 char* apr_palloc (int *,int) ;
 char* apr_pmemdup (int *,char const*,int) ;
 int assert (int ) ;
 int memcpy (char*,char const*,int) ;
 int strlen (char const*) ;
 int svn_path_is_canonical_internal (char const*,int *) ;

__attribute__((used)) static char *
svn_path_join_internal(const char *base,
                       const char *component,
                       apr_pool_t *pool)
{
  apr_size_t blen = strlen(base);
  apr_size_t clen = strlen(component);
  char *path;

  assert(svn_path_is_canonical_internal(base, pool));
  assert(svn_path_is_canonical_internal(component, pool));


  if (*component == '/')
    return apr_pmemdup(pool, component, clen + 1);


  if (SVN_PATH_IS_EMPTY(base))
    return apr_pmemdup(pool, component, clen + 1);
  if (SVN_PATH_IS_EMPTY(component))
    return apr_pmemdup(pool, base, blen + 1);

  if (blen == 1 && base[0] == '/')
    blen = 0;


  path = apr_palloc(pool, blen + 1 + clen + 1);
  memcpy(path, base, blen);
  path[blen] = '/';
  memcpy(path + blen + 1, component, clen + 1);

  return path;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ apr_size_t ;
typedef int apr_pool_t ;


 char* apr_palloc (int *,scalar_t__) ;
 char* apr_pmemdup (int *,char const*,scalar_t__) ;
 int assert (int ) ;
 int memcpy (char*,char const*,scalar_t__) ;
 int relpath_is_canonical (char const*) ;
 scalar_t__ strlen (char const*) ;

char *
svn_relpath_join(const char *base,
                 const char *component,
                 apr_pool_t *pool)
{
  apr_size_t blen = strlen(base);
  apr_size_t clen = strlen(component);
  char *path;

  assert(relpath_is_canonical(base));
  assert(relpath_is_canonical(component));


  if (blen == 0)
    return apr_pmemdup(pool, component, clen + 1);
  if (clen == 0)
    return apr_pmemdup(pool, base, blen + 1);

  path = apr_palloc(pool, blen + 1 + clen + 1);
  memcpy(path, base, blen);
  path[blen] = '/';
  memcpy(path + blen + 1, component, clen + 1);

  return path;
}

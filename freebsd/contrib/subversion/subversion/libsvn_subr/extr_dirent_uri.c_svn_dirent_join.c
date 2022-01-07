
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_size_t ;
typedef int apr_pool_t ;


 scalar_t__ SVN_PATH_IS_EMPTY (char const*) ;
 char* apr_palloc (int *,int) ;
 char* apr_pmemdup (int *,char const*,int) ;
 char* apr_pstrndup (int *,char const*,int) ;
 int assert (int ) ;
 scalar_t__ dirent_is_rooted (char const*) ;
 int dirent_root_length (char const*,int) ;
 int memcpy (char*,char const*,int) ;
 int strlen (char const*) ;
 scalar_t__ svn_dirent_is_absolute (char const*) ;
 int svn_dirent_is_canonical (char const*,int *) ;

char *svn_dirent_join(const char *base,
                      const char *component,
                      apr_pool_t *pool)
{
  apr_size_t blen = strlen(base);
  apr_size_t clen = strlen(component);
  char *dirent;
  int add_separator;

  assert(svn_dirent_is_canonical(base, pool));
  assert(svn_dirent_is_canonical(component, pool));


  if (svn_dirent_is_absolute(component))
    return apr_pmemdup(pool, component, clen + 1);


  if (SVN_PATH_IS_EMPTY(base))
    return apr_pmemdup(pool, component, clen + 1);
  if (SVN_PATH_IS_EMPTY(component))
    return apr_pmemdup(pool, base, blen + 1);
  add_separator = 1;
  if (base[blen - 1] == '/'



        )
          add_separator = 0;


  dirent = apr_palloc(pool, blen + add_separator + clen + 1);
  memcpy(dirent, base, blen);
  if (add_separator)
    dirent[blen] = '/';
  memcpy(dirent + blen + add_separator, component, clen + 1);

  return dirent;
}

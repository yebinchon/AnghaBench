
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;


 int SVN_VA_NULL ;
 char* apr_pstrcat (int *,char*,int ,int ) ;
 int assert (int ) ;
 int svn_fspath__is_canonical (char const*) ;
 int svn_relpath_get_longest_ancestor (char const*,char const*,int *) ;

char *
svn_fspath__get_longest_ancestor(const char *fspath1,
                                 const char *fspath2,
                                 apr_pool_t *result_pool)
{
  char *result;
  assert(svn_fspath__is_canonical(fspath1));
  assert(svn_fspath__is_canonical(fspath2));

  result = apr_pstrcat(result_pool, "/",
                       svn_relpath_get_longest_ancestor(fspath1 + 1,
                                                        fspath2 + 1,
                                                        result_pool),
                       SVN_VA_NULL);

  assert(svn_fspath__is_canonical(result));
  return result;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;


 char* apr_pstrndup (int *,char const*,int ) ;
 int assert (int ) ;
 int get_longest_ancestor_length (int ,char const*,char const*,int *) ;
 int relpath_is_canonical (char const*) ;
 int type_relpath ;

char *
svn_relpath_get_longest_ancestor(const char *relpath1,
                                 const char *relpath2,
                                 apr_pool_t *pool)
{
  assert(relpath_is_canonical(relpath1));
  assert(relpath_is_canonical(relpath2));

  return apr_pstrndup(pool, relpath1,
                      get_longest_ancestor_length(type_relpath, relpath1,
                                                  relpath2, pool));
}

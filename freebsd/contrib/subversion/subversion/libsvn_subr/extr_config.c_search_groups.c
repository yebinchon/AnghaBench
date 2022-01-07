
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_boolean_t ;
struct search_groups_baton {int pool; int match; int key; } ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int FALSE ;
 int TRUE ;
 int apr_pstrdup (int ,char const*) ;
 scalar_t__ svn_cstring_match_glob_list (int ,int *) ;
 int * svn_cstring_split (char const*,char*,int ,int *) ;

__attribute__((used)) static svn_boolean_t search_groups(const char *name,
                                   const char *value,
                                   void *baton,
                                   apr_pool_t *pool)
{
  struct search_groups_baton *b = baton;
  apr_array_header_t *list;

  list = svn_cstring_split(value, ",", TRUE, pool);
  if (svn_cstring_match_glob_list(b->key, list))
    {

      b->match = apr_pstrdup(b->pool, name);
      return FALSE;
    }
  else
    return TRUE;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* data; int len; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int APR_FNM_CASE_BLIND ;
 scalar_t__ APR_FNM_NOMATCH ;
 int SVN_PROP_EXECUTABLE ;
 int SVN_PROP_MIME_TYPE ;
 int TRUE ;
 scalar_t__ apr_fnmatch (char const*,char const*,int ) ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_next (int *) ;
 int apr_hash_pool_get (int *) ;
 char* apr_hash_this_key (int *) ;
 char* apr_hash_this_val (int *) ;
 scalar_t__ strcmp (char const*,int ) ;
 int strlen (char const*) ;
 int svn_hash_sets (int *,char const*,TYPE_1__*) ;
 TYPE_1__* svn_string_create_empty (int ) ;

__attribute__((used)) static void
get_auto_props_for_pattern(apr_hash_t *properties,
                           const char **mimetype,
                           svn_boolean_t *have_executable,
                           const char *filename,
                           const char *pattern,
                           apr_hash_t *propvals,
                           apr_pool_t *scratch_pool)
{
  apr_hash_index_t *hi;


  if (apr_fnmatch(pattern, filename,
                  APR_FNM_CASE_BLIND) == APR_FNM_NOMATCH)
    return;

  for (hi = apr_hash_first(scratch_pool, propvals);
       hi != ((void*)0);
       hi = apr_hash_next(hi))
    {
      const char *propname = apr_hash_this_key(hi);
      const char *propval = apr_hash_this_val(hi);
      svn_string_t *propval_str =
        svn_string_create_empty(apr_hash_pool_get(properties));

      propval_str->data = propval;
      propval_str->len = strlen(propval);

      svn_hash_sets(properties, propname, propval_str);
      if (strcmp(propname, SVN_PROP_MIME_TYPE) == 0)
        *mimetype = propval;
      else if (strcmp(propname, SVN_PROP_EXECUTABLE) == 0)
        *have_executable = TRUE;
    }
}

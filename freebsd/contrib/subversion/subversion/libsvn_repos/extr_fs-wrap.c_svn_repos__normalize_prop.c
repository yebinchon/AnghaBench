
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_string_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 scalar_t__ svn_prop_needs_translation (char const*) ;
 int * svn_string_dup (int const*,int *) ;
 int svn_subst_translate_string2 (int **,int *,int *,int const*,char*,int ,int *,int *) ;

svn_error_t *
svn_repos__normalize_prop(const svn_string_t **result_p,
                          svn_boolean_t *normalized_p,
                          const char *name,
                          const svn_string_t *value,
                          apr_pool_t *result_pool,
                          apr_pool_t *scratch_pool)
{
  if (svn_prop_needs_translation(name) && value)
    {
      svn_string_t *new_value;

      SVN_ERR(svn_subst_translate_string2(&new_value, ((void*)0), normalized_p,
                                          value, "UTF-8", TRUE,
                                          result_pool, scratch_pool));
      *result_p = new_value;
    }
  else
    {
      *result_p = svn_string_dup(value, result_pool);
      if (normalized_p)
        *normalized_p = FALSE;
    }

  return SVN_NO_ERROR;
}

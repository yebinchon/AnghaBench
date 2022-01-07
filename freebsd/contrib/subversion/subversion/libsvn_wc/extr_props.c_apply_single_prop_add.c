
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int svn_string_t ;
struct TYPE_8__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 scalar_t__ SVN_ERR_MERGEINFO_PARSE_ERROR ;
 TYPE_1__* SVN_NO_ERROR ;
 int SVN_PROP_MERGEINFO ;
 int TRUE ;
 TYPE_1__* combine_mergeinfo_props (int const**,int const*,int const*,int *,int *) ;
 scalar_t__ strcmp (char const*,int ) ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_error_trace (TYPE_1__*) ;
 scalar_t__ svn_string_compare (int const*,int const*) ;

__attribute__((used)) static svn_error_t *
apply_single_prop_add(const svn_string_t **result_val,
                      svn_boolean_t *conflict_remains,
                      svn_boolean_t *did_merge,
                      const char *propname,
                      const svn_string_t *pristine_val,
                      const svn_string_t *new_val,
                      const svn_string_t *working_val,
                      apr_pool_t *result_pool,
                      apr_pool_t *scratch_pool)

{
  *conflict_remains = FALSE;

  if (working_val)
    {


      if (svn_string_compare(working_val, new_val))

        *did_merge = TRUE;

      else
        {
          svn_boolean_t merged_prop = FALSE;



          if (strcmp(propname, SVN_PROP_MERGEINFO) == 0)
            {
              const svn_string_t *merged_val;
              svn_error_t *err = combine_mergeinfo_props(&merged_val,
                                                         working_val,
                                                         new_val,
                                                         result_pool,
                                                         scratch_pool);




              if (err)
                {
                  if (err->apr_err == SVN_ERR_MERGEINFO_PARSE_ERROR)
                    svn_error_clear(err);
                  else
                    return svn_error_trace(err);
                  }
              else
                {
                  merged_prop = TRUE;
                  *result_val = merged_val;
                  *did_merge = TRUE;
                }
            }

          if (!merged_prop)
            *conflict_remains = TRUE;
        }
    }
  else if (pristine_val)
    *conflict_remains = TRUE;
  else

    *result_val = new_val;

  return SVN_NO_ERROR;
}

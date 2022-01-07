
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
 int SVN_ERR (int ) ;
 scalar_t__ SVN_ERR_MERGEINFO_PARSE_ERROR ;
 TYPE_1__* SVN_NO_ERROR ;
 int SVN_PROP_MERGEINFO ;
 int TRUE ;
 int apply_single_generic_prop_change (int const**,int *,int *,int const*,int const*,int const*) ;
 TYPE_1__* apply_single_mergeinfo_prop_change (int const**,int *,int *,int const*,int const*,int const*,int const*,int *,int *) ;
 scalar_t__ strcmp (char const*,int ) ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_error_trace (TYPE_1__*) ;

__attribute__((used)) static svn_error_t *
apply_single_prop_change(const svn_string_t **result_val,
                         svn_boolean_t *conflict_remains,
                         svn_boolean_t *did_merge,
                         const char *propname,
                         const svn_string_t *base_val,
                         const svn_string_t *old_val,
                         const svn_string_t *new_val,
                         const svn_string_t *working_val,
                         apr_pool_t *result_pool,
                         apr_pool_t *scratch_pool)
{
  svn_boolean_t merged_prop = FALSE;

  *conflict_remains = FALSE;
  if (strcmp(propname, SVN_PROP_MERGEINFO) == 0)
    {






      svn_error_t *err = apply_single_mergeinfo_prop_change(result_val,
                                                            conflict_remains,
                                                            did_merge,
                                                            base_val,
                                                            old_val,
                                                            new_val,
                                                            working_val,
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
         }
    }

  if (!merged_prop)
    {



      SVN_ERR(apply_single_generic_prop_change(result_val, conflict_remains,
                                               did_merge,
                                               old_val, new_val, working_val));
    }

  return SVN_NO_ERROR;
}

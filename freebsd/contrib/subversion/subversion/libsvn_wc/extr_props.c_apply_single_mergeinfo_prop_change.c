
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_string_t ;
typedef int svn_mergeinfo_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int combine_forked_mergeinfo_props (int const**,int const*,int const*,int const*,int *,int *) ;
 int diff_mergeinfo_props (int *,int *,int const*,int const*,int *) ;
 int svn_mergeinfo_to_string (int **,int ,int *) ;
 scalar_t__ svn_string_compare (int const*,int const*) ;

__attribute__((used)) static svn_error_t *
apply_single_mergeinfo_prop_change(const svn_string_t **result_val,
                                   svn_boolean_t *conflict_remains,
                                   svn_boolean_t *did_merge,
                                   const svn_string_t *base_val,
                                   const svn_string_t *old_val,
                                   const svn_string_t *new_val,
                                   const svn_string_t *working_val,
                                   apr_pool_t *result_pool,
                                   apr_pool_t *scratch_pool)
{
  if ((working_val && ! base_val)
      || (! working_val && base_val)
      || (working_val && base_val
          && !svn_string_compare(working_val, base_val)))
    {

      if (working_val)
        {
          if (svn_string_compare(working_val, new_val))

            *did_merge = TRUE;
          else
            {




              SVN_ERR(combine_forked_mergeinfo_props(&new_val, old_val,
                                                     working_val,
                                                     new_val,
                                                     result_pool,
                                                     scratch_pool));
              *result_val = new_val;
              *did_merge = TRUE;
            }
        }
      else
        {

          *conflict_remains = TRUE;
        }
    }

  else if (! working_val)

    {



      svn_mergeinfo_t deleted_mergeinfo, added_mergeinfo;
      svn_string_t *mergeinfo_string;

      SVN_ERR(diff_mergeinfo_props(&deleted_mergeinfo,
                                   &added_mergeinfo,
                                   old_val, new_val, scratch_pool));
      SVN_ERR(svn_mergeinfo_to_string(&mergeinfo_string,
                                      added_mergeinfo, result_pool));
      *result_val = mergeinfo_string;
    }

  else
    {
      if (svn_string_compare(old_val, base_val))
        *result_val = new_val;
      else
        {




          SVN_ERR(combine_forked_mergeinfo_props(&new_val, old_val,
                                                 working_val,
                                                 new_val, result_pool,
                                                 scratch_pool));
          *result_val = new_val;
          *did_merge = TRUE;
        }
    }

  return SVN_NO_ERROR;
}

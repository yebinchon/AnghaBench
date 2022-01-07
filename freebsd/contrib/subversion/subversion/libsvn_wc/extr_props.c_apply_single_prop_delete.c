
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_string_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;


 int FALSE ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 scalar_t__ svn_string_compare (int const*,int const*) ;

__attribute__((used)) static svn_error_t *
apply_single_prop_delete(const svn_string_t **result_val,
                         svn_boolean_t *conflict_remains,
                         svn_boolean_t *did_merge,
                         const svn_string_t *base_val,
                         const svn_string_t *old_val,
                         const svn_string_t *working_val)
{
  *conflict_remains = FALSE;

  if (! base_val)
    {
      if (working_val
          && !svn_string_compare(working_val, old_val))
        {

          *conflict_remains = TRUE;
        }
      else
        {
          *result_val = ((void*)0);
          if (old_val)


            *did_merge = TRUE;
        }
    }

  else if (svn_string_compare(base_val, old_val))
    {
       if (working_val)
         {
           if (svn_string_compare(working_val, old_val))

             *result_val = ((void*)0);
           else
             *conflict_remains = TRUE;
         }
       else


         *did_merge = TRUE;
    }

  else
    *conflict_remains = TRUE;

  return SVN_NO_ERROR;
}

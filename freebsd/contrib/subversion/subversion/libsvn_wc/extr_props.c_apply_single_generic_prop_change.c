
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_string_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;


 int SVN_ERR_ASSERT (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 scalar_t__ svn_string_compare (int const*,int const*) ;

__attribute__((used)) static svn_error_t *
apply_single_generic_prop_change(const svn_string_t **result_val,
                                 svn_boolean_t *conflict_remains,
                                 svn_boolean_t *did_merge,
                                 const svn_string_t *old_val,
                                 const svn_string_t *new_val,
                                 const svn_string_t *working_val)
{
  SVN_ERR_ASSERT(old_val != ((void*)0));



  if (working_val && new_val
      && svn_string_compare(working_val, new_val))
    {

      if (! old_val || ! svn_string_compare(old_val, new_val))
        *did_merge = TRUE;
    }

  else if (working_val && old_val
      && svn_string_compare(working_val, old_val))
    {

      *result_val = new_val;
    }
  else
    {

      *conflict_remains = TRUE;
    }

  return SVN_NO_ERROR;
}

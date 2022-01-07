
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_branch__state_t ;
typedef int apr_pool_t ;


 int SVN_ERR_ASSERT_NO_RETURN (char const*) ;
 int svn_branch__get_outer_branch_and_eid (int **,int*,int const*,int *) ;
 char* svn_branch__get_rrpath_by_eid (int *,int,int *) ;

const char *
svn_branch__get_root_rrpath(const svn_branch__state_t *branch,
                            apr_pool_t *result_pool)
{
  svn_branch__state_t *outer_branch;
  int outer_eid;
  const char *root_rrpath;

  svn_branch__get_outer_branch_and_eid(&outer_branch, &outer_eid, branch,
                                       result_pool);
  if (outer_branch)
    {
      root_rrpath
        = svn_branch__get_rrpath_by_eid(outer_branch, outer_eid, result_pool);
    }
  else
    {
      root_rrpath = "";
    }

  SVN_ERR_ASSERT_NO_RETURN(root_rrpath);
  return root_rrpath;
}

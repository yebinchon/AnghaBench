
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_element__tree_t ;
typedef int svn_branch__state_t ;
typedef int apr_pool_t ;


 int EID_IS_ALLOCATED (int const*,int) ;
 int SVN_ERR_ASSERT_NO_RETURN (int ) ;
 int svn_branch__state_get_elements (int const*,int **,int *) ;
 char const* svn_element__tree_get_path_by_eid (int *,int,int *) ;
 int svn_error_clear (int ) ;

const char *
svn_branch__get_path_by_eid(const svn_branch__state_t *branch,
                            int eid,
                            apr_pool_t *result_pool)
{
  svn_element__tree_t *elements;

  SVN_ERR_ASSERT_NO_RETURN(EID_IS_ALLOCATED(branch, eid));


  svn_error_clear(svn_branch__state_get_elements(branch, &elements, result_pool));
  return svn_element__tree_get_path_by_eid(elements, eid, result_pool);
}

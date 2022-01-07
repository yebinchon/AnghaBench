
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_element__content_t ;
typedef int svn_branch__state_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int * branch_get_element (int const*,int) ;

__attribute__((used)) static svn_error_t *
branch_state_get_element(const svn_branch__state_t *branch,
                         svn_element__content_t **element_p,
                         int eid,
                         apr_pool_t *result_pool)
{
  *element_p = branch_get_element(branch, eid);
  return SVN_NO_ERROR;
}

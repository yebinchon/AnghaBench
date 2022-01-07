
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_branch__state_t ;
typedef int svn_branch__eid_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_branch__state_set_element (int *,int ,int *,int *) ;

svn_error_t *
svn_branch__state_delete_one(svn_branch__state_t *branch,
                             svn_branch__eid_t eid,
                             apr_pool_t *scratch_pool)
{
  SVN_ERR(svn_branch__state_set_element(branch, eid, ((void*)0), scratch_pool));
  return SVN_NO_ERROR;
}

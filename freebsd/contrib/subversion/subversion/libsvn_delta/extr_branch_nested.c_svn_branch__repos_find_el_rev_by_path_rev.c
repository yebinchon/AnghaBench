
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef int svn_branch__state_t ;
typedef int svn_branch__repos_t ;
struct TYPE_4__ {int branch; int eid; int rev; } ;
typedef TYPE_1__ svn_branch__el_rev_id_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT_NO_RETURN (int ) ;
 int * SVN_NO_ERROR ;
 TYPE_1__* apr_palloc (int *,int) ;
 int svn_branch__find_nested_branch_element_by_relpath (int *,int *,int *,char const*,int *) ;
 int svn_branch__repos_get_branch_by_id (int **,int const*,int ,char const*,int *) ;

svn_error_t *
svn_branch__repos_find_el_rev_by_path_rev(svn_branch__el_rev_id_t **el_rev_p,
                                const svn_branch__repos_t *repos,
                                svn_revnum_t revnum,
                                const char *branch_id,
                                const char *relpath,
                                apr_pool_t *result_pool,
                                apr_pool_t *scratch_pool)
{
  svn_branch__el_rev_id_t *el_rev = apr_palloc(result_pool, sizeof(*el_rev));
  svn_branch__state_t *branch;

  SVN_ERR(svn_branch__repos_get_branch_by_id(&branch,
                                             repos, revnum, branch_id,
                                             scratch_pool));
  el_rev->rev = revnum;
  SVN_ERR(svn_branch__find_nested_branch_element_by_relpath(&el_rev->branch,
                                                            &el_rev->eid,
                                                            branch, relpath,
                                                            scratch_pool));


  SVN_ERR_ASSERT_NO_RETURN(el_rev->branch);
  *el_rev_p = el_rev;
  return SVN_NO_ERROR;
}

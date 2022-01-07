
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_6__ {int repos_root; } ;
typedef TYPE_1__ svn_commit_info_t ;
struct ccw_baton {int original_baton; int (* original_callback ) (TYPE_1__*,int ,int *) ;int session; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int stub1 (TYPE_1__*,int ,int *) ;
 TYPE_1__* svn_commit_info_dup (TYPE_1__ const*,int *) ;
 int * svn_error_trace (int ) ;
 int svn_ra_local__get_repos_root (int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
commit_callback_wrapper(const svn_commit_info_t *commit_info,
                        void *baton,
                        apr_pool_t *scratch_pool)
{
  struct ccw_baton *ccwb = baton;
  svn_commit_info_t *ci = svn_commit_info_dup(commit_info, scratch_pool);

  SVN_ERR(svn_ra_local__get_repos_root(ccwb->session, &ci->repos_root,
                                       scratch_pool));

  return svn_error_trace(ccwb->original_callback(ci, ccwb->original_baton,
                                                 scratch_pool));
}

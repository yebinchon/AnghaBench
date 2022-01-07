
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ svn_revnum_t ;
typedef int svn_error_t ;
typedef int svn_branch__txn_t ;
typedef int svn_branch__state_t ;
struct TYPE_6__ {TYPE_1__* rev_roots; } ;
typedef TYPE_2__ svn_branch__repos_t ;
typedef int apr_pool_t ;
struct TYPE_5__ {scalar_t__ nelts; } ;


 int SVN_BRANCH__ERR ;
 int SVN_ERR_FS_NO_SUCH_REVISION ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int * svn_branch__repos_get_revision (TYPE_2__ const*,scalar_t__) ;
 int * svn_branch__txn_get_branch_by_id (int *,char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,char const*,...) ;

svn_error_t *
svn_branch__repos_get_branch_by_id(svn_branch__state_t **branch_p,
                                   const svn_branch__repos_t *repos,
                                   svn_revnum_t revnum,
                                   const char *branch_id,
                                   apr_pool_t *scratch_pool)
{
  svn_branch__txn_t *rev_root;

  if (revnum < 0 || revnum >= repos->rev_roots->nelts)
    return svn_error_createf(SVN_ERR_FS_NO_SUCH_REVISION, ((void*)0),
                             _("No such revision %ld"), revnum);

  rev_root = svn_branch__repos_get_revision(repos, revnum);
  *branch_p = svn_branch__txn_get_branch_by_id(rev_root, branch_id,
                                               scratch_pool);
  if (! *branch_p)
    return svn_error_createf(SVN_BRANCH__ERR, ((void*)0),
                             _("Branch %s not found in r%ld"),
                             branch_id, revnum);
  return SVN_NO_ERROR;
}

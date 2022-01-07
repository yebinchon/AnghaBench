
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_7__ {int repos_root; int post_commit_err; int author; int date; int revision; } ;
typedef TYPE_1__ svn_commit_info_t ;
struct TYPE_8__ {int pool; int callback_baton; int (* callback ) (TYPE_1__*,int ,int ) ;TYPE_6__* sess_baton; } ;
typedef TYPE_2__ ra_svn_commit_callback_baton_t ;
struct TYPE_10__ {TYPE_3__* conn; } ;
struct TYPE_9__ {int repos_root; } ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int apr_pstrdup (int ,int ) ;
 int handle_auth_request (TYPE_6__*,int ) ;
 int stub1 (TYPE_1__*,int ,int ) ;
 TYPE_1__* svn_create_commit_info (int ) ;
 int svn_ra_svn__read_tuple (TYPE_3__*,int ,char*,int *,int *,int *,int *) ;

__attribute__((used)) static svn_error_t *ra_svn_end_commit(void *baton)
{
  ra_svn_commit_callback_baton_t *ccb = baton;
  svn_commit_info_t *commit_info = svn_create_commit_info(ccb->pool);

  SVN_ERR(handle_auth_request(ccb->sess_baton, ccb->pool));
  SVN_ERR(svn_ra_svn__read_tuple(ccb->sess_baton->conn, ccb->pool,
                                 "r(?c)(?c)?(?c)",
                                 &(commit_info->revision),
                                 &(commit_info->date),
                                 &(commit_info->author),
                                 &(commit_info->post_commit_err)));

  commit_info->repos_root = apr_pstrdup(ccb->pool,
                                        ccb->sess_baton->conn->repos_root);

  if (ccb->callback)
    SVN_ERR(ccb->callback(commit_info, ccb->callback_baton, ccb->pool));

  return SVN_NO_ERROR;
}

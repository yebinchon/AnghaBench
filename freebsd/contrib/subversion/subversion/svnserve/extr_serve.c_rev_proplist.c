
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_ra_svn_conn_t ;
typedef int svn_ra_svn__list_t ;
typedef int svn_error_t ;
struct TYPE_9__ {TYPE_1__* repository; } ;
typedef TYPE_2__ server_baton_t ;
struct TYPE_10__ {int * conn; TYPE_2__* server; } ;
typedef TYPE_3__ authz_baton_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_8__ {int repos; } ;


 int SVN_CMD_ERR (int ) ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int authz_check_access_cb_func (TYPE_2__*) ;
 int log_command (TYPE_2__*,int *,int *,char*,int ) ;
 int svn_log__rev_proplist (int ,int *) ;
 int svn_ra_svn__parse_tuple (int *,char*,int *) ;
 int svn_ra_svn__write_proplist (int *,int *,int *) ;
 int svn_ra_svn__write_tuple (int *,int *,char*,...) ;
 int svn_repos_fs_revision_proplist (int **,int ,int ,int ,TYPE_3__*,int *) ;
 int trivial_auth_request (int *,int *,TYPE_2__*) ;

__attribute__((used)) static svn_error_t *
rev_proplist(svn_ra_svn_conn_t *conn,
             apr_pool_t *pool,
             svn_ra_svn__list_t *params,
             void *baton)
{
  server_baton_t *b = baton;
  svn_revnum_t rev;
  apr_hash_t *props;
  authz_baton_t ab;

  ab.server = b;
  ab.conn = conn;

  SVN_ERR(svn_ra_svn__parse_tuple(params, "r", &rev));
  SVN_ERR(log_command(b, conn, pool, "%s", svn_log__rev_proplist(rev, pool)));

  SVN_ERR(trivial_auth_request(conn, pool, b));
  SVN_CMD_ERR(svn_repos_fs_revision_proplist(&props, b->repository->repos,
                                             rev,
                                             authz_check_access_cb_func(b),
                                             &ab, pool));
  SVN_ERR(svn_ra_svn__write_tuple(conn, pool, "w((!", "success"));
  SVN_ERR(svn_ra_svn__write_proplist(conn, pool, props));
  SVN_ERR(svn_ra_svn__write_tuple(conn, pool, "!))"));
  return SVN_NO_ERROR;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int svn_string_t ;
typedef int svn_revnum_t ;
typedef int svn_ra_svn_conn_t ;
typedef int svn_ra_svn__list_t ;
typedef int svn_error_t ;
struct TYPE_9__ {TYPE_1__* repository; } ;
typedef TYPE_2__ server_baton_t ;
struct TYPE_10__ {int * conn; TYPE_2__* server; } ;
typedef TYPE_3__ authz_baton_t ;
typedef int apr_pool_t ;
struct TYPE_8__ {int repos; } ;


 int SVN_CMD_ERR (int ) ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int authz_check_access_cb_func (TYPE_2__*) ;
 int log_command (TYPE_2__*,int *,int *,char*,int ) ;
 int svn_log__rev_prop (int ,char const*,int *) ;
 int svn_ra_svn__parse_tuple (int *,char*,int *,char const**) ;
 int svn_ra_svn__write_cmd_response (int *,int *,char*,int *) ;
 int svn_repos_fs_revision_prop (int **,int ,int ,char const*,int ,TYPE_3__*,int *) ;
 int trivial_auth_request (int *,int *,TYPE_2__*) ;

__attribute__((used)) static svn_error_t *
rev_prop(svn_ra_svn_conn_t *conn,
         apr_pool_t *pool,
         svn_ra_svn__list_t *params,
         void *baton)
{
  server_baton_t *b = baton;
  svn_revnum_t rev;
  const char *name;
  svn_string_t *value;
  authz_baton_t ab;

  ab.server = b;
  ab.conn = conn;

  SVN_ERR(svn_ra_svn__parse_tuple(params, "rc", &rev, &name));
  SVN_ERR(log_command(b, conn, pool, "%s",
                      svn_log__rev_prop(rev, name, pool)));

  SVN_ERR(trivial_auth_request(conn, pool, b));
  SVN_CMD_ERR(svn_repos_fs_revision_prop(&value, b->repository->repos, rev,
                                         name, authz_check_access_cb_func(b),
                                         &ab, pool));
  SVN_ERR(svn_ra_svn__write_cmd_response(conn, pool, "(?s)", value));
  return SVN_NO_ERROR;
}

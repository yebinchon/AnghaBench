
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int svn_string_t ;
typedef int svn_revnum_t ;
typedef int svn_ra_svn_conn_t ;
typedef int svn_error_t ;
struct TYPE_12__ {TYPE_2__* client_info; TYPE_1__* repository; } ;
typedef TYPE_3__ server_baton_t ;
struct TYPE_13__ {int * conn; TYPE_3__* server; } ;
typedef TYPE_4__ authz_baton_t ;
typedef int apr_pool_t ;
struct TYPE_11__ {int user; } ;
struct TYPE_10__ {int repos; } ;


 int FALSE ;
 int SVN_CMD_ERR (int ) ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int authz_check_access_cb_func (TYPE_3__*) ;
 int log_command (TYPE_3__*,int *,int *,char*,int ) ;
 int must_have_access (int *,int *,TYPE_3__*,int ,int *,int ) ;
 int svn_authz_write ;
 int svn_log__change_rev_prop (int ,char const*,int *) ;
 int svn_ra_svn__write_cmd_response (int *,int *,char*) ;
 int svn_repos_fs_change_rev_prop4 (int ,int ,int ,char const*,int const* const*,int const*,int ,int ,int ,TYPE_4__*,int *) ;

__attribute__((used)) static svn_error_t *do_change_rev_prop(svn_ra_svn_conn_t *conn,
                                       server_baton_t *b,
                                       svn_revnum_t rev,
                                       const char *name,
                                       const svn_string_t *const *old_value_p,
                                       const svn_string_t *value,
                                       apr_pool_t *pool)
{
  authz_baton_t ab;

  ab.server = b;
  ab.conn = conn;

  SVN_ERR(must_have_access(conn, pool, b, svn_authz_write, ((void*)0), FALSE));
  SVN_ERR(log_command(b, conn, pool, "%s",
                      svn_log__change_rev_prop(rev, name, pool)));
  SVN_CMD_ERR(svn_repos_fs_change_rev_prop4(b->repository->repos, rev,
                                            b->client_info->user,
                                            name, old_value_p, value,
                                            TRUE, TRUE,
                                            authz_check_access_cb_func(b), &ab,
                                            pool));
  SVN_ERR(svn_ra_svn__write_cmd_response(conn, pool, ""));

  return SVN_NO_ERROR;
}

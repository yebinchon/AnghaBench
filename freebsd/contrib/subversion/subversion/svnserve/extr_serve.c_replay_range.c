
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ svn_revnum_t ;
typedef int svn_ra_svn_conn_t ;
typedef int svn_ra_svn__list_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
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
 int replay_one_revision (int *,TYPE_2__*,scalar_t__,scalar_t__,int ,int *) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int svn_ra_svn__parse_tuple (int *,char*,scalar_t__*,scalar_t__*,scalar_t__*,int *) ;
 int svn_ra_svn__write_cmd_response (int *,int *,char*) ;
 int svn_ra_svn__write_proplist (int *,int *,int *) ;
 int svn_ra_svn__write_tuple (int *,int *,char*,...) ;
 int svn_repos_fs_revision_proplist (int **,int ,scalar_t__,int ,TYPE_3__*,int *) ;
 int trivial_auth_request (int *,int *,TYPE_2__*) ;

__attribute__((used)) static svn_error_t *
replay_range(svn_ra_svn_conn_t *conn,
             apr_pool_t *pool,
             svn_ra_svn__list_t *params,
             void *baton)
{
  svn_revnum_t start_rev, end_rev, rev, low_water_mark;
  svn_boolean_t send_deltas;
  server_baton_t *b = baton;
  apr_pool_t *iterpool;
  authz_baton_t ab;

  ab.server = b;
  ab.conn = conn;

  SVN_ERR(svn_ra_svn__parse_tuple(params, "rrrb", &start_rev,
                                 &end_rev, &low_water_mark,
                                 &send_deltas));

  SVN_ERR(trivial_auth_request(conn, pool, b));

  iterpool = svn_pool_create(pool);
  for (rev = start_rev; rev <= end_rev; rev++)
    {
      apr_hash_t *props;

      svn_pool_clear(iterpool);

      SVN_CMD_ERR(svn_repos_fs_revision_proplist(&props,
                                                 b->repository->repos, rev,
                                                 authz_check_access_cb_func(b),
                                                 &ab,
                                                 iterpool));
      SVN_ERR(svn_ra_svn__write_tuple(conn, iterpool, "w(!", "revprops"));
      SVN_ERR(svn_ra_svn__write_proplist(conn, iterpool, props));
      SVN_ERR(svn_ra_svn__write_tuple(conn, iterpool, "!)"));

      SVN_ERR(replay_one_revision(conn, b, rev, low_water_mark,
                                  send_deltas, iterpool));

    }
  svn_pool_destroy(iterpool);

  SVN_ERR(svn_ra_svn__write_cmd_response(conn, pool, ""));

  return SVN_NO_ERROR;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_ra_svn_conn_t ;
typedef int svn_ra_svn__list_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int server_baton_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int replay_one_revision (int *,int *,int ,int ,int ,int *) ;
 int svn_ra_svn__parse_tuple (int *,char*,int *,int *,int *) ;
 int svn_ra_svn__write_cmd_response (int *,int *,char*) ;
 int trivial_auth_request (int *,int *,int *) ;

__attribute__((used)) static svn_error_t *
replay(svn_ra_svn_conn_t *conn,
       apr_pool_t *pool,
       svn_ra_svn__list_t *params,
       void *baton)
{
  svn_revnum_t rev, low_water_mark;
  svn_boolean_t send_deltas;
  server_baton_t *b = baton;

  SVN_ERR(svn_ra_svn__parse_tuple(params, "rrb", &rev, &low_water_mark,
                                 &send_deltas));

  SVN_ERR(trivial_auth_request(conn, pool, b));

  SVN_ERR(replay_one_revision(conn, b, rev, low_water_mark,
                              send_deltas, pool));

  SVN_ERR(svn_ra_svn__write_cmd_response(conn, pool, ""));

  return SVN_NO_ERROR;
}

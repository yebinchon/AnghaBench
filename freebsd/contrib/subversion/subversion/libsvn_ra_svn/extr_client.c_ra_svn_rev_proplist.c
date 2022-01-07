
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_ra_svn_conn_t ;
struct TYPE_5__ {int * conn; } ;
typedef TYPE_1__ svn_ra_svn__session_baton_t ;
typedef int svn_ra_svn__list_t ;
struct TYPE_6__ {TYPE_1__* priv; } ;
typedef TYPE_2__ svn_ra_session_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int handle_auth_request (TYPE_1__*,int *) ;
 int svn_ra_svn__parse_proplist (int *,int *,int **) ;
 int svn_ra_svn__read_cmd_response (int *,int *,char*,int **) ;
 int svn_ra_svn__write_cmd_rev_proplist (int *,int *,int ) ;

__attribute__((used)) static svn_error_t *ra_svn_rev_proplist(svn_ra_session_t *session, svn_revnum_t rev,
                                        apr_hash_t **props, apr_pool_t *pool)
{
  svn_ra_svn__session_baton_t *sess_baton = session->priv;
  svn_ra_svn_conn_t *conn = sess_baton->conn;
  svn_ra_svn__list_t *proplist;

  SVN_ERR(svn_ra_svn__write_cmd_rev_proplist(conn, pool, rev));
  SVN_ERR(handle_auth_request(sess_baton, pool));
  SVN_ERR(svn_ra_svn__read_cmd_response(conn, pool, "l", &proplist));
  SVN_ERR(svn_ra_svn__parse_proplist(proplist, pool, props));
  return SVN_NO_ERROR;
}

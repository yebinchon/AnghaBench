
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_ra_svn_conn_t ;
struct TYPE_6__ {int * conn; } ;
typedef TYPE_1__ svn_ra_svn__session_baton_t ;
struct TYPE_7__ {TYPE_1__* priv; } ;
typedef TYPE_2__ svn_ra_session_t ;
typedef int svn_node_kind_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int handle_auth_request (TYPE_1__*,int *) ;
 char* reparent_path (TYPE_2__*,char const*,int *) ;
 int svn_node_kind_from_word (char const*) ;
 int svn_ra_svn__read_cmd_response (int *,int *,char*,char const**) ;
 int svn_ra_svn__write_cmd_check_path (int *,int *,char const*,int ) ;

__attribute__((used)) static svn_error_t *ra_svn_check_path(svn_ra_session_t *session,
                                      const char *path, svn_revnum_t rev,
                                      svn_node_kind_t *kind, apr_pool_t *pool)
{
  svn_ra_svn__session_baton_t *sess_baton = session->priv;
  svn_ra_svn_conn_t *conn = sess_baton->conn;
  const char *kind_word;

  path = reparent_path(session, path, pool);
  SVN_ERR(svn_ra_svn__write_cmd_check_path(conn, pool, path, rev));
  SVN_ERR(handle_auth_request(sess_baton, pool));
  SVN_ERR(svn_ra_svn__read_cmd_response(conn, pool, "w", &kind_word));
  *kind = svn_node_kind_from_word(kind_word);
  return SVN_NO_ERROR;
}

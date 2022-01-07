
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
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int N_ (char*) ;
 int SVN_ERR (int ) ;
 int handle_auth_request (TYPE_1__*,int *) ;
 int handle_unsupported_cmd (int ,int ) ;
 char* reparent_path (TYPE_2__*,char const*,int *) ;
 int * svn_error_trace (int ) ;
 int svn_ra_svn__read_cmd_response (int *,int *,char*,int *) ;
 int svn_ra_svn__write_cmd_get_deleted_rev (int *,int *,char const*,int ,int ) ;

__attribute__((used)) static svn_error_t *
ra_svn_get_deleted_rev(svn_ra_session_t *session,
                       const char *path,
                       svn_revnum_t peg_revision,
                       svn_revnum_t end_revision,
                       svn_revnum_t *revision_deleted,
                       apr_pool_t *pool)

{
  svn_ra_svn__session_baton_t *sess_baton = session->priv;
  svn_ra_svn_conn_t *conn = sess_baton->conn;

  path = reparent_path(session, path, pool);


  SVN_ERR(svn_ra_svn__write_cmd_get_deleted_rev(conn, pool, path,
                                               peg_revision, end_revision));


  SVN_ERR(handle_unsupported_cmd(handle_auth_request(sess_baton, pool),
                                 N_("'get-deleted-rev' not implemented")));

  return svn_error_trace(svn_ra_svn__read_cmd_response(conn, pool, "r",
                                                       revision_deleted));
}

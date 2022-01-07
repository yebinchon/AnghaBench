
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_ra_svn_conn_t ;
struct TYPE_7__ {int * conn; } ;
typedef TYPE_1__ svn_ra_svn__session_baton_t ;
struct TYPE_8__ {TYPE_1__* priv; } ;
typedef TYPE_2__ svn_ra_session_t ;
typedef int svn_ra_reporter3_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef int svn_delta_editor_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int DEPTH_TO_RECURSE (int ) ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int ensure_exact_server_parent (TYPE_2__*,int *) ;
 int handle_auth_request (TYPE_1__*,int *) ;
 int ra_svn_get_reporter (TYPE_1__*,int *,int const*,void*,char const*,int ,int const**,void**) ;
 int svn_ra_svn__write_cmd_status (int *,int *,char const*,int ,int ,int ) ;

__attribute__((used)) static svn_error_t *ra_svn_status(svn_ra_session_t *session,
                                  const svn_ra_reporter3_t **reporter,
                                  void **report_baton,
                                  const char *target, svn_revnum_t rev,
                                  svn_depth_t depth,
                                  const svn_delta_editor_t *status_editor,
                                  void *status_baton, apr_pool_t *pool)
{
  svn_ra_svn__session_baton_t *sess_baton = session->priv;
  svn_ra_svn_conn_t *conn = sess_baton->conn;
  svn_boolean_t recurse = DEPTH_TO_RECURSE(depth);


  SVN_ERR(ensure_exact_server_parent(session, pool));


  SVN_ERR(svn_ra_svn__write_cmd_status(conn, pool, target, recurse, rev,
                                       depth));
  SVN_ERR(handle_auth_request(sess_baton, pool));



  SVN_ERR(ra_svn_get_reporter(sess_baton, pool, status_editor, status_baton,
                              target, depth, reporter, report_baton));
  return SVN_NO_ERROR;
}

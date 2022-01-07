
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_6__ {int conn; } ;
typedef TYPE_1__ svn_ra_svn__session_baton_t ;
struct TYPE_7__ {TYPE_1__* priv; } ;
typedef TYPE_2__ svn_ra_session_t ;
typedef int svn_error_t ;
typedef int svn_delta_editor_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int N_ (char*) ;
 int SVN_ERR (int ) ;
 int TRUE ;
 int ensure_exact_server_parent (TYPE_2__*,int *) ;
 int handle_auth_request (TYPE_1__*,int *) ;
 int handle_unsupported_cmd (int ,int ) ;
 int * svn_error_trace (int ) ;
 int svn_ra_svn__read_cmd_response (int ,int *,char*) ;
 int svn_ra_svn__write_cmd_replay (int ,int *,int ,int ,int ) ;
 int svn_ra_svn_drive_editor2 (int ,int *,int const*,void*,int *,int ) ;

__attribute__((used)) static svn_error_t *ra_svn_replay(svn_ra_session_t *session,
                                  svn_revnum_t revision,
                                  svn_revnum_t low_water_mark,
                                  svn_boolean_t send_deltas,
                                  const svn_delta_editor_t *editor,
                                  void *edit_baton,
                                  apr_pool_t *pool)
{
  svn_ra_svn__session_baton_t *sess = session->priv;



  SVN_ERR(ensure_exact_server_parent(session, pool));
  SVN_ERR(svn_ra_svn__write_cmd_replay(sess->conn, pool, revision,
                                       low_water_mark, send_deltas));

  SVN_ERR(handle_unsupported_cmd(handle_auth_request(sess, pool),
                                 N_("Server doesn't support the replay "
                                    "command")));

  SVN_ERR(svn_ra_svn_drive_editor2(sess->conn, pool, editor, edit_baton,
                                   ((void*)0), TRUE));

  return svn_error_trace(svn_ra_svn__read_cmd_response(sess->conn, pool, ""));
}

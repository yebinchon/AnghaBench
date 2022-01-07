
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_ra_svn_conn_t ;
struct TYPE_6__ {int * conn; } ;
typedef TYPE_1__ svn_ra_svn__session_baton_t ;
typedef int svn_ra_svn__list_t ;
struct TYPE_7__ {TYPE_1__* priv; } ;
typedef TYPE_2__ svn_ra_session_t ;
typedef int svn_lock_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int N_ (char*) ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int handle_auth_request (TYPE_1__*,int *) ;
 int handle_unsupported_cmd (int ,int ) ;
 int parse_lock (int *,int *,int **) ;
 char* reparent_path (TYPE_2__*,char const*,int *) ;
 int svn_ra_svn__read_cmd_response (int *,int *,char*,int **) ;
 int svn_ra_svn__write_cmd_get_lock (int *,int *,char const*) ;

__attribute__((used)) static svn_error_t *ra_svn_get_lock(svn_ra_session_t *session,
                                    svn_lock_t **lock,
                                    const char *path,
                                    apr_pool_t *pool)
{
  svn_ra_svn__session_baton_t *sess = session->priv;
  svn_ra_svn_conn_t* conn = sess->conn;
  svn_ra_svn__list_t *list;

  path = reparent_path(session, path, pool);
  SVN_ERR(svn_ra_svn__write_cmd_get_lock(conn, pool, path));


  SVN_ERR(handle_unsupported_cmd(handle_auth_request(sess, pool),
                                 N_("Server doesn't support the get-lock "
                                    "command")));

  SVN_ERR(svn_ra_svn__read_cmd_response(conn, pool, "(?l)", &list));
  if (list)
    SVN_ERR(parse_lock(list, pool, lock));
  else
    *lock = ((void*)0);

  return SVN_NO_ERROR;
}

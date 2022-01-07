
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int svn_ra_svn_conn_t ;
struct TYPE_14__ {int * pool; int auth_baton; int callbacks_baton; int callbacks; int config; int tunnel_argv; int tunnel_name; int * conn; TYPE_2__* parent; } ;
typedef TYPE_1__ svn_ra_svn__session_baton_t ;
struct TYPE_15__ {int server_url; } ;
typedef TYPE_2__ svn_ra_svn__parent_t ;
struct TYPE_16__ {TYPE_1__* priv; int pool; } ;
typedef TYPE_3__ svn_ra_session_t ;
struct TYPE_17__ {scalar_t__ apr_err; } ;
typedef TYPE_4__ svn_error_t ;
typedef int apr_uri_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 scalar_t__ SVN_ERR_RA_SVN_UNKNOWN_CMD ;
 TYPE_4__* SVN_NO_ERROR ;
 TYPE_4__* handle_auth_request (TYPE_1__*,int *) ;
 TYPE_4__* open_session (TYPE_1__**,char const*,int *,int ,int ,int ,int ,int ,int ,int *,int *) ;
 TYPE_4__* parse_url (char const*,int *,int *) ;
 int svn_error_clear (TYPE_4__*) ;
 int * svn_pool_create (int ) ;
 int svn_pool_destroy (int *) ;
 int svn_ra_svn__read_cmd_response (int *,int *,char*) ;
 int svn_ra_svn__write_cmd_reparent (int *,int *,char const*) ;
 int svn_stringbuf_set (int ,char const*) ;

__attribute__((used)) static svn_error_t *
reparent_server(svn_ra_session_t *ra_session,
                const char *url,
                apr_pool_t *scratch_pool)
{
  svn_ra_svn__session_baton_t *sess = ra_session->priv;
  svn_ra_svn__parent_t *parent = sess->parent;
  svn_ra_svn_conn_t *conn = sess->conn;
  svn_error_t *err;
  apr_pool_t *sess_pool;
  svn_ra_svn__session_baton_t *new_sess;
  apr_uri_t uri;


  SVN_ERR(svn_ra_svn__write_cmd_reparent(conn, scratch_pool, url));
  err = handle_auth_request(sess, scratch_pool);
  if (! err)
    {
      SVN_ERR(svn_ra_svn__read_cmd_response(conn, scratch_pool, ""));
      svn_stringbuf_set(parent->server_url, url);
      return SVN_NO_ERROR;
    }
  else if (err->apr_err != SVN_ERR_RA_SVN_UNKNOWN_CMD)
    return err;



  svn_error_clear(err);

  sess_pool = svn_pool_create(ra_session->pool);
  err = parse_url(url, &uri, sess_pool);
  if (! err)
    err = open_session(&new_sess, url, &uri, sess->tunnel_name, sess->tunnel_argv,
                       sess->config, sess->callbacks, sess->callbacks_baton,
                       sess->auth_baton, sess_pool, sess_pool);


  if (err)
    {
      svn_pool_destroy(sess_pool);
      return err;
    }


  ra_session->priv = new_sess;
  svn_pool_destroy(sess->pool);

  return SVN_NO_ERROR;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_ra_svn_conn_t ;
struct TYPE_14__ {char* useragent; int * conn; } ;
typedef TYPE_2__ svn_ra_svn__session_baton_t ;
struct TYPE_15__ {TYPE_2__* priv; } ;
typedef TYPE_3__ svn_ra_session_t ;
typedef int svn_error_t ;
typedef int svn_delta_editor_t ;
typedef int svn_commit_callback2_t ;
typedef int svn_boolean_t ;
struct TYPE_16__ {void* callback_baton; int callback; int * new_rev; int * pool; TYPE_2__* sess_baton; } ;
typedef TYPE_4__ ra_svn_commit_callback_baton_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_BAD_PROPERTY_VALUE ;
 int SVN_ERR_RA_NOT_IMPLEMENTED ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_REVISION_LOG ;
 int SVN_PROP_TXN_CLIENT_COMPAT_VERSION ;
 int SVN_PROP_TXN_USER_AGENT ;
 int SVN_RA_SVN_CAP_COMMIT_REVPROPS ;
 int SVN_RA_SVN_CAP_EPHEMERAL_TXNPROPS ;
 char* SVN_VER_NUMBER ;
 int _ (char*) ;
 int apr_hash_count (int *) ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_next (int *) ;
 int apr_hash_this (int *,void const**,int *,void**) ;
 TYPE_4__* apr_palloc (int *,int) ;
 int ensure_exact_server_parent (TYPE_3__*,int *) ;
 int handle_auth_request (TYPE_2__*,int *) ;
 int ra_svn_end_commit ;
 int * svn_error_create (int ,int *,int ) ;
 int * svn_error_createf (int ,int *,int ) ;
 TYPE_1__* svn_hash_gets (int *,int ) ;
 int svn_hash_sets (int *,int ,TYPE_1__*) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int svn_ra_svn__read_cmd_response (int *,int *,char*) ;
 int svn_ra_svn__write_proplist (int *,int *,int *) ;
 int svn_ra_svn__write_tuple (int *,int *,char*,...) ;
 int svn_ra_svn_get_editor (int const**,void**,int *,int *,int ,TYPE_4__*) ;
 scalar_t__ svn_ra_svn_has_capability (int *,int ) ;
 TYPE_1__* svn_string_create (char*,int *) ;

__attribute__((used)) static svn_error_t *ra_svn_commit(svn_ra_session_t *session,
                                  const svn_delta_editor_t **editor,
                                  void **edit_baton,
                                  apr_hash_t *revprop_table,
                                  svn_commit_callback2_t callback,
                                  void *callback_baton,
                                  apr_hash_t *lock_tokens,
                                  svn_boolean_t keep_locks,
                                  apr_pool_t *pool)
{
  svn_ra_svn__session_baton_t *sess_baton = session->priv;
  svn_ra_svn_conn_t *conn = sess_baton->conn;
  ra_svn_commit_callback_baton_t *ccb;
  apr_hash_index_t *hi;
  apr_pool_t *iterpool;
  const svn_string_t *log_msg = svn_hash_gets(revprop_table,
                                              SVN_PROP_REVISION_LOG);

  if (log_msg == ((void*)0) &&
      ! svn_ra_svn_has_capability(conn, SVN_RA_SVN_CAP_COMMIT_REVPROPS))
    {
      return svn_error_createf(SVN_ERR_BAD_PROPERTY_VALUE, ((void*)0),
                               _("ra_svn does not support not specifying "
                                 "a log message with pre-1.5 servers; "
                                 "consider passing an empty one, or upgrading "
                                 "the server"));
    }
  else if (log_msg == ((void*)0))
    log_msg = svn_string_create("", pool);



  if (apr_hash_count(revprop_table) > 1 &&
      ! svn_ra_svn_has_capability(conn, SVN_RA_SVN_CAP_COMMIT_REVPROPS))
    return svn_error_create(SVN_ERR_RA_NOT_IMPLEMENTED, ((void*)0),
                            _("Server doesn't support setting arbitrary "
                              "revision properties during commit"));



  if (svn_ra_svn_has_capability(conn, SVN_RA_SVN_CAP_COMMIT_REVPROPS) &&
      svn_ra_svn_has_capability(conn, SVN_RA_SVN_CAP_EPHEMERAL_TXNPROPS))
    {
      svn_hash_sets(revprop_table, SVN_PROP_TXN_CLIENT_COMPAT_VERSION,
                    svn_string_create(SVN_VER_NUMBER, pool));
      svn_hash_sets(revprop_table, SVN_PROP_TXN_USER_AGENT,
                    svn_string_create(sess_baton->useragent, pool));
    }


  SVN_ERR(ensure_exact_server_parent(session, pool));




  SVN_ERR(svn_ra_svn__write_tuple(conn, pool, "w(c(!", "commit",
                                  log_msg->data));
  if (lock_tokens)
    {
      iterpool = svn_pool_create(pool);
      for (hi = apr_hash_first(pool, lock_tokens); hi; hi = apr_hash_next(hi))
        {
          const void *key;
          void *val;
          const char *path, *token;

          svn_pool_clear(iterpool);
          apr_hash_this(hi, &key, ((void*)0), &val);
          path = key;
          token = val;
          SVN_ERR(svn_ra_svn__write_tuple(conn, iterpool, "cc", path, token));
        }
      svn_pool_destroy(iterpool);
    }
  SVN_ERR(svn_ra_svn__write_tuple(conn, pool, "!)b(!", keep_locks));
  SVN_ERR(svn_ra_svn__write_proplist(conn, pool, revprop_table));
  SVN_ERR(svn_ra_svn__write_tuple(conn, pool, "!))"));
  SVN_ERR(handle_auth_request(sess_baton, pool));
  SVN_ERR(svn_ra_svn__read_cmd_response(conn, pool, ""));


  ccb = apr_palloc(pool, sizeof(*ccb));
  ccb->sess_baton = sess_baton;
  ccb->pool = pool;
  ccb->new_rev = ((void*)0);
  ccb->callback = callback;
  ccb->callback_baton = callback_baton;




  svn_ra_svn_get_editor(editor, edit_baton, conn, pool,
                        ra_svn_end_commit, ccb);
  return SVN_NO_ERROR;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;


typedef int svn_ra_svn_conn_t ;
struct TYPE_26__ {int * conn; } ;
typedef TYPE_2__ svn_ra_svn__session_baton_t ;
typedef int svn_ra_svn__list_t ;
struct TYPE_25__ {int list; } ;
struct TYPE_27__ {scalar_t__ kind; TYPE_1__ u; } ;
typedef TYPE_3__ svn_ra_svn__item_t ;
struct TYPE_28__ {TYPE_2__* priv; } ;
typedef TYPE_4__ svn_ra_session_t ;
typedef TYPE_5__* (* svn_ra_lock_callback_t ) (void*,char const*,int ,int *,TYPE_5__*,int *) ;
struct TYPE_29__ {scalar_t__ apr_err; } ;
typedef TYPE_5__ svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_RA_SVN_MALFORMED_DATA ;
 scalar_t__ SVN_ERR_RA_SVN_UNKNOWN_CMD ;
 TYPE_5__* SVN_NO_ERROR ;
 scalar_t__ SVN_RA_SVN_LIST ;
 int _ (char*) ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_next (int *) ;
 int apr_hash_this (int *,void const**,int *,void**) ;
 TYPE_5__* handle_auth_request (TYPE_2__*,int *) ;
 scalar_t__ is_done_response (TYPE_3__*) ;
 TYPE_5__* ra_svn_unlock_compat (TYPE_4__*,int *,int ,TYPE_5__* (*) (void*,char const*,int ,int *,TYPE_5__*,int *),void*,int *) ;
 int * reparent_path_hash (TYPE_4__*,int *,int *,int *) ;
 scalar_t__ strcmp (char const*,char*) ;
 int svn_error_clear (TYPE_5__*) ;
 TYPE_5__* svn_error_create (int ,int *,int ) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 TYPE_5__* svn_ra_svn__handle_failure_status (int *) ;
 int svn_ra_svn__parse_tuple (int *,char*,char const**,...) ;
 int svn_ra_svn__read_cmd_response (int *,int *,char*) ;
 int svn_ra_svn__read_item (int *,int *,TYPE_3__**) ;
 int svn_ra_svn__write_tuple (int *,int *,char*,...) ;

__attribute__((used)) static svn_error_t *ra_svn_unlock(svn_ra_session_t *session,
                                  apr_hash_t *path_tokens,
                                  svn_boolean_t break_lock,
                                  svn_ra_lock_callback_t lock_func,
                                  void *lock_baton,
                                  apr_pool_t *pool)
{
  svn_ra_svn__session_baton_t *sess = session->priv;
  svn_ra_svn_conn_t *conn = sess->conn;
  apr_hash_index_t *hi;
  apr_pool_t *iterpool = svn_pool_create(pool);
  svn_error_t *err;
  const char *path;

  path_tokens = reparent_path_hash(session, path_tokens, pool, pool);
  SVN_ERR(svn_ra_svn__write_tuple(conn, pool, "w(b(!", "unlock-many",
                                  break_lock));

  for (hi = apr_hash_first(pool, path_tokens); hi; hi = apr_hash_next(hi))
    {
      void *val;
      const void *key;
      const char *token;

      svn_pool_clear(iterpool);
      apr_hash_this(hi, &key, ((void*)0), &val);
      path = key;

      if (strcmp(val, "") != 0)
        token = val;
      else
        token = ((void*)0);

      SVN_ERR(svn_ra_svn__write_tuple(conn, iterpool, "c(?c)", path, token));
    }

  SVN_ERR(svn_ra_svn__write_tuple(conn, pool, "!))"));

  err = handle_auth_request(sess, pool);




  if (err && err->apr_err == SVN_ERR_RA_SVN_UNKNOWN_CMD)
    {
      svn_error_clear(err);
      return ra_svn_unlock_compat(session, path_tokens, break_lock, lock_func,
                                  lock_baton, pool);
    }

  if (err)
    return err;


  for (hi = apr_hash_first(pool, path_tokens); hi; hi = apr_hash_next(hi))
    {
      svn_ra_svn__item_t *elt;
      const void *key;
      svn_error_t *callback_err;
      const char *status;
      svn_ra_svn__list_t *list;

      svn_pool_clear(iterpool);

      SVN_ERR(svn_ra_svn__read_item(conn, iterpool, &elt));





      if (is_done_response(elt))
        break;

      apr_hash_this(hi, &key, ((void*)0), ((void*)0));
      path = key;

      if (elt->kind != SVN_RA_SVN_LIST)
        return svn_error_create(SVN_ERR_RA_SVN_MALFORMED_DATA, ((void*)0),
                                _("Unlock response not a list"));

      SVN_ERR(svn_ra_svn__parse_tuple(&elt->u.list, "wl", &status, &list));

      if (strcmp(status, "failure") == 0)
        err = svn_ra_svn__handle_failure_status(list);
      else if (strcmp(status, "success") == 0)
        {
          SVN_ERR(svn_ra_svn__parse_tuple(list, "c", &path));
          err = SVN_NO_ERROR;
        }
      else
        return svn_error_create(SVN_ERR_RA_SVN_MALFORMED_DATA, ((void*)0),
                                _("Unknown status for unlock command"));

      if (lock_func)
        callback_err = lock_func(lock_baton, path, FALSE, ((void*)0), err,
                                 iterpool);
      else
        callback_err = SVN_NO_ERROR;

      svn_error_clear(err);

      if (callback_err)
        return callback_err;
    }



  if (!hi)
    {
      svn_ra_svn__item_t *elt;

      SVN_ERR(svn_ra_svn__read_item(conn, pool, &elt));
      if (! is_done_response(elt))
        return svn_error_create(SVN_ERR_RA_SVN_MALFORMED_DATA, ((void*)0),
                                _("Didn't receive end marker for unlock "
                                  "responses"));
    }

  SVN_ERR(svn_ra_svn__read_cmd_response(conn, pool, ""));

  svn_pool_destroy(iterpool);

  return SVN_NO_ERROR;
}

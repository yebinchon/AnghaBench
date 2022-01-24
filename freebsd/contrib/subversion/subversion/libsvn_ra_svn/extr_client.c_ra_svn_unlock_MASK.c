#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_5__ ;
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_ra_svn_conn_t ;
struct TYPE_26__ {int /*<<< orphan*/ * conn; } ;
typedef  TYPE_2__ svn_ra_svn__session_baton_t ;
typedef  int /*<<< orphan*/  svn_ra_svn__list_t ;
struct TYPE_25__ {int /*<<< orphan*/  list; } ;
struct TYPE_27__ {scalar_t__ kind; TYPE_1__ u; } ;
typedef  TYPE_3__ svn_ra_svn__item_t ;
struct TYPE_28__ {TYPE_2__* priv; } ;
typedef  TYPE_4__ svn_ra_session_t ;
typedef  TYPE_5__* (* svn_ra_lock_callback_t ) (void*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_5__*,int /*<<< orphan*/ *) ;
struct TYPE_29__ {scalar_t__ apr_err; } ;
typedef  TYPE_5__ svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_RA_SVN_MALFORMED_DATA ; 
 scalar_t__ SVN_ERR_RA_SVN_UNKNOWN_CMD ; 
 TYPE_5__* SVN_NO_ERROR ; 
 scalar_t__ SVN_RA_SVN_LIST ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void const**,int /*<<< orphan*/ *,void**) ; 
 TYPE_5__* FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (TYPE_3__*) ; 
 TYPE_5__* FUNC7 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_5__* (*) (void*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_5__*,int /*<<< orphan*/ *),void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*) ; 
 TYPE_5__* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char*,char const**,...) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static svn_error_t *FUNC20(svn_ra_session_t *session,
                                  apr_hash_t *path_tokens,
                                  svn_boolean_t break_lock,
                                  svn_ra_lock_callback_t lock_func,
                                  void *lock_baton,
                                  apr_pool_t *pool)
{
  svn_ra_svn__session_baton_t *sess = session->priv;
  svn_ra_svn_conn_t *conn = sess->conn;
  apr_hash_index_t *hi;
  apr_pool_t *iterpool = FUNC13(pool);
  svn_error_t *err;
  const char *path;

  path_tokens = FUNC8(session, path_tokens, pool, pool);
  FUNC0(FUNC19(conn, pool, "w(b(!", "unlock-many",
                                  break_lock));

  for (hi = FUNC2(pool, path_tokens); hi; hi = FUNC3(hi))
    {
      void *val;
      const void *key;
      const char *token;

      FUNC12(iterpool);
      FUNC4(hi, &key, NULL, &val);
      path = key;

      if (FUNC9(val, "") != 0)
        token = val;
      else
        token = NULL;

      FUNC0(FUNC19(conn, iterpool, "c(?c)", path, token));
    }

  FUNC0(FUNC19(conn, pool, "!))"));

  err = FUNC5(sess, pool);

  /* Pre-1.3 servers don't support 'unlock-many'. If unknown, fall back
   * to 'unlock'.
   */
  if (err && err->apr_err == SVN_ERR_RA_SVN_UNKNOWN_CMD)
    {
      FUNC10(err);
      return FUNC7(session, path_tokens, break_lock, lock_func,
                                  lock_baton, pool);
    }

  if (err)
    return err;

  /* Loop over responses to unlock files. */
  for (hi = FUNC2(pool, path_tokens); hi; hi = FUNC3(hi))
    {
      svn_ra_svn__item_t *elt;
      const void *key;
      svn_error_t *callback_err;
      const char *status;
      svn_ra_svn__list_t *list;

      FUNC12(iterpool);

      FUNC0(FUNC18(conn, iterpool, &elt));

      /* The server might have encountered some sort of fatal error in
         the middle of the request list.  If this happens, it will
         transmit "done" to end the lock-info early, and then the
         overall command response will talk about the fatal error. */
      if (FUNC6(elt))
        break;

      FUNC4(hi, &key, NULL, NULL);
      path = key;

      if (elt->kind != SVN_RA_SVN_LIST)
        return FUNC11(SVN_ERR_RA_SVN_MALFORMED_DATA, NULL,
                                FUNC1("Unlock response not a list"));

      FUNC0(FUNC16(&elt->u.list, "wl", &status, &list));

      if (FUNC9(status, "failure") == 0)
        err = FUNC15(list);
      else if (FUNC9(status, "success") == 0)
        {
          FUNC0(FUNC16(list, "c", &path));
          err = SVN_NO_ERROR;
        }
      else
        return FUNC11(SVN_ERR_RA_SVN_MALFORMED_DATA, NULL,
                                FUNC1("Unknown status for unlock command"));

      if (lock_func)
        callback_err = lock_func(lock_baton, path, FALSE, NULL, err,
                                 iterpool);
      else
        callback_err = SVN_NO_ERROR;

      FUNC10(err);

      if (callback_err)
        return callback_err;
    }

  /* If we didn't break early above, and the whole hash was traversed,
     read the final "done" from the server. */
  if (!hi)
    {
      svn_ra_svn__item_t *elt;

      FUNC0(FUNC18(conn, pool, &elt));
      if (! FUNC6(elt))
        return FUNC11(SVN_ERR_RA_SVN_MALFORMED_DATA, NULL,
                                FUNC1("Didn't receive end marker for unlock "
                                  "responses"));
    }

  FUNC0(FUNC17(conn, pool, ""));

  FUNC14(iterpool);

  return SVN_NO_ERROR;
}
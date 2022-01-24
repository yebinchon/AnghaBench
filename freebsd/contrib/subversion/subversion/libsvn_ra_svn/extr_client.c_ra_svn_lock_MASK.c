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
typedef  int /*<<< orphan*/  svn_revnum_t ;
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
typedef  int /*<<< orphan*/  svn_lock_t ;
struct TYPE_29__ {scalar_t__ apr_err; } ;
typedef  TYPE_5__ svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_RA_SVN_MALFORMED_DATA ; 
 scalar_t__ SVN_ERR_RA_SVN_UNKNOWN_CMD ; 
 TYPE_5__* SVN_NO_ERROR ; 
 scalar_t__ SVN_RA_SVN_LIST ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void const**,int /*<<< orphan*/ *,void**) ; 
 TYPE_5__* FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 TYPE_5__* FUNC8 (TYPE_4__*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,TYPE_5__* (*) (void*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_5__*,int /*<<< orphan*/ *),void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*) ; 
 TYPE_5__* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,char*,char const**,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static svn_error_t *FUNC21(svn_ra_session_t *session,
                                apr_hash_t *path_revs,
                                const char *comment,
                                svn_boolean_t steal_lock,
                                svn_ra_lock_callback_t lock_func,
                                void *lock_baton,
                                apr_pool_t *pool)
{
  svn_ra_svn__session_baton_t *sess = session->priv;
  svn_ra_svn_conn_t *conn = sess->conn;
  apr_hash_index_t *hi;
  svn_error_t *err;
  apr_pool_t *iterpool = FUNC14(pool);

  path_revs = FUNC9(session, path_revs, pool, pool);
  FUNC0(FUNC20(conn, pool, "w((?c)b(!", "lock-many",
                                  comment, steal_lock));

  for (hi = FUNC2(pool, path_revs); hi; hi = FUNC3(hi))
    {
      const void *key;
      const char *path;
      void *val;
      svn_revnum_t *revnum;

      FUNC13(iterpool);
      FUNC4(hi, &key, NULL, &val);
      path = key;
      revnum = val;

      FUNC0(FUNC20(conn, iterpool, "c(?r)", path, *revnum));
    }

  FUNC0(FUNC20(conn, pool, "!))"));

  err = FUNC5(sess, pool);

  /* Pre-1.3 servers don't support 'lock-many'. If that fails, fall back
   * to 'lock'. */
  if (err && err->apr_err == SVN_ERR_RA_SVN_UNKNOWN_CMD)
    {
      FUNC11(err);
      return FUNC8(session, path_revs, comment, steal_lock,
                                lock_func, lock_baton, pool);
    }

  if (err)
    return err;

  /* Loop over responses to get lock information. */
  for (hi = FUNC2(pool, path_revs); hi; hi = FUNC3(hi))
    {
      svn_ra_svn__item_t *elt;
      const void *key;
      const char *path;
      svn_error_t *callback_err;
      const char *status;
      svn_lock_t *lock;
      svn_ra_svn__list_t *list;

      FUNC4(hi, &key, NULL, NULL);
      path = key;

      FUNC13(iterpool);
      FUNC0(FUNC19(conn, iterpool, &elt));

      /* The server might have encountered some sort of fatal error in
         the middle of the request list.  If this happens, it will
         transmit "done" to end the lock-info early, and then the
         overall command response will talk about the fatal error. */
      if (FUNC6(elt))
        break;

      if (elt->kind != SVN_RA_SVN_LIST)
        return FUNC12(SVN_ERR_RA_SVN_MALFORMED_DATA, NULL,
                                FUNC1("Lock response not a list"));

      FUNC0(FUNC17(&elt->u.list, "wl", &status, &list));

      if (FUNC10(status, "failure") == 0)
        err = FUNC16(list);
      else if (FUNC10(status, "success") == 0)
        {
          FUNC0(FUNC7(list, iterpool, &lock));
          err = NULL;
        }
      else
        return FUNC12(SVN_ERR_RA_SVN_MALFORMED_DATA, NULL,
                                FUNC1("Unknown status for lock command"));

      if (lock_func)
        callback_err = lock_func(lock_baton, path, TRUE,
                                 err ? NULL : lock,
                                 err, iterpool);
      else
        callback_err = SVN_NO_ERROR;

      FUNC11(err);

      if (callback_err)
        return callback_err;
    }

  /* If we didn't break early above, and the whole hash was traversed,
     read the final "done" from the server. */
  if (!hi)
    {
      svn_ra_svn__item_t *elt;

      FUNC0(FUNC19(conn, pool, &elt));
      if (!FUNC6(elt))
        return FUNC12(SVN_ERR_RA_SVN_MALFORMED_DATA, NULL,
                                FUNC1("Didn't receive end marker for lock "
                                  "responses"));
    }

  FUNC0(FUNC18(conn, pool, ""));

  FUNC15(iterpool);

  return SVN_NO_ERROR;
}
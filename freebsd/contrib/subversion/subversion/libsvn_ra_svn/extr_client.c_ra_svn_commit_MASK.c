#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_ra_svn_conn_t ;
struct TYPE_14__ {char* useragent; int /*<<< orphan*/ * conn; } ;
typedef  TYPE_2__ svn_ra_svn__session_baton_t ;
struct TYPE_15__ {TYPE_2__* priv; } ;
typedef  TYPE_3__ svn_ra_session_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_delta_editor_t ;
typedef  int /*<<< orphan*/  svn_commit_callback2_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct TYPE_16__ {void* callback_baton; int /*<<< orphan*/  callback; int /*<<< orphan*/ * new_rev; int /*<<< orphan*/ * pool; TYPE_2__* sess_baton; } ;
typedef  TYPE_4__ ra_svn_commit_callback_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_BAD_PROPERTY_VALUE ; 
 int /*<<< orphan*/  SVN_ERR_RA_NOT_IMPLEMENTED ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_PROP_REVISION_LOG ; 
 int /*<<< orphan*/  SVN_PROP_TXN_CLIENT_COMPAT_VERSION ; 
 int /*<<< orphan*/  SVN_PROP_TXN_USER_AGENT ; 
 int /*<<< orphan*/  SVN_RA_SVN_CAP_COMMIT_REVPROPS ; 
 int /*<<< orphan*/  SVN_RA_SVN_CAP_EPHEMERAL_TXNPROPS ; 
 char* SVN_VER_NUMBER ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,void const**,int /*<<< orphan*/ *,void**) ; 
 TYPE_4__* FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ra_svn_end_commit ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/  const**,void**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_4__*) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC21 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *FUNC22(svn_ra_session_t *session,
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
  const svn_string_t *log_msg = FUNC11(revprop_table,
                                              SVN_PROP_REVISION_LOG);

  if (log_msg == NULL &&
      ! FUNC20(conn, SVN_RA_SVN_CAP_COMMIT_REVPROPS))
    {
      return FUNC10(SVN_ERR_BAD_PROPERTY_VALUE, NULL,
                               FUNC1("ra_svn does not support not specifying "
                                 "a log message with pre-1.5 servers; "
                                 "consider passing an empty one, or upgrading "
                                 "the server"));
    }
  else if (log_msg == NULL)
    /* 1.5+ server.  Set LOG_MSG to something, since the 'logmsg' argument
       to the 'commit' protocol command is non-optional; on the server side,
       only REVPROP_TABLE will be used, and LOG_MSG will be ignored.  The
       "svn:log" member of REVPROP_TABLE table is NULL, therefore the commit
       will have a NULL log message (not just "", really NULL).

       svnserve 1.5.x+ has always ignored LOG_MSG when REVPROP_TABLE was
       present; this was elevated to a protocol promise in r1498550 (and
       later documented in this comment) in order to fix the segmentation
       fault bug described in the log message of r1498550.*/
    log_msg = FUNC21("", pool);

  /* If we're sending revprops other than svn:log, make sure the server won't
     silently ignore them. */
  if (FUNC2(revprop_table) > 1 &&
      ! FUNC20(conn, SVN_RA_SVN_CAP_COMMIT_REVPROPS))
    return FUNC9(SVN_ERR_RA_NOT_IMPLEMENTED, NULL,
                            FUNC1("Server doesn't support setting arbitrary "
                              "revision properties during commit"));

  /* If the server supports ephemeral txnprops, add the one that
     reports the client's version level string. */
  if (FUNC20(conn, SVN_RA_SVN_CAP_COMMIT_REVPROPS) &&
      FUNC20(conn, SVN_RA_SVN_CAP_EPHEMERAL_TXNPROPS))
    {
      FUNC12(revprop_table, SVN_PROP_TXN_CLIENT_COMPAT_VERSION,
                    FUNC21(SVN_VER_NUMBER, pool));
      FUNC12(revprop_table, SVN_PROP_TXN_USER_AGENT,
                    FUNC21(sess_baton->useragent, pool));
    }

  /* Callbacks may assume that all data is relative the sessions's URL. */
  FUNC0(FUNC7(session, pool));

  /* Tell the server we're starting the commit.
     Send log message here for backwards compatibility with servers
     before 1.5. */
  FUNC0(FUNC18(conn, pool, "w(c(!", "commit",
                                  log_msg->data));
  if (lock_tokens)
    {
      iterpool = FUNC14(pool);
      for (hi = FUNC3(pool, lock_tokens); hi; hi = FUNC4(hi))
        {
          const void *key;
          void *val;
          const char *path, *token;

          FUNC13(iterpool);
          FUNC5(hi, &key, NULL, &val);
          path = key;
          token = val;
          FUNC0(FUNC18(conn, iterpool, "cc", path, token));
        }
      FUNC15(iterpool);
    }
  FUNC0(FUNC18(conn, pool, "!)b(!", keep_locks));
  FUNC0(FUNC17(conn, pool, revprop_table));
  FUNC0(FUNC18(conn, pool, "!))"));
  FUNC0(FUNC8(sess_baton, pool));
  FUNC0(FUNC16(conn, pool, ""));

  /* Remember a few arguments for when the commit is over. */
  ccb = FUNC6(pool, sizeof(*ccb));
  ccb->sess_baton = sess_baton;
  ccb->pool = pool;
  ccb->new_rev = NULL;
  ccb->callback = callback;
  ccb->callback_baton = callback_baton;

  /* Fetch an editor for the caller to drive.  The editor will call
   * ra_svn_end_commit() upon close_edit(), at which point we'll fill
   * in the new_rev, committed_date, and committed_author values. */
  FUNC19(editor, edit_baton, conn, pool,
                        ra_svn_end_commit, ccb);
  return SVN_NO_ERROR;
}
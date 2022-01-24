#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_7__ ;
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_ra_svn_conn_t ;
struct TYPE_23__ {int nelts; } ;
typedef  TYPE_4__ svn_ra_svn__list_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_delta_editor_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct TYPE_24__ {TYPE_3__* repository; TYPE_2__* client_info; } ;
typedef  TYPE_5__ server_baton_t ;
struct TYPE_25__ {char const** date; char const** author; char const** post_commit_err; int /*<<< orphan*/ * new_rev; int /*<<< orphan*/ * pool; } ;
typedef  TYPE_6__ commit_callback_baton_t ;
struct TYPE_26__ {int /*<<< orphan*/ * conn; TYPE_5__* server; } ;
typedef  TYPE_7__ authz_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
struct TYPE_22__ {int /*<<< orphan*/  fs; TYPE_1__* fs_path; int /*<<< orphan*/  repos_url; int /*<<< orphan*/  repos; } ;
struct TYPE_21__ {char const* user; scalar_t__ tunnel; } ;
struct TYPE_20__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_PROP_REVISION_AUTHOR ; 
 int /*<<< orphan*/  SVN_PROP_REVISION_LOG ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  authz_commit_cb ; 
 int /*<<< orphan*/  commit_done ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  svn_authz_write ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,char*,char const**,...) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/  const**,void**,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_6__*,int /*<<< orphan*/ ,TYPE_7__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_4__*,TYPE_5__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC19(svn_ra_svn_conn_t *conn,
       apr_pool_t *pool,
       svn_ra_svn__list_t *params,
       void *baton)
{
  server_baton_t *b = baton;
  const char *log_msg,
             *date = NULL,
             *author = NULL,
             *post_commit_err = NULL;
  svn_ra_svn__list_t *lock_tokens;
  svn_boolean_t keep_locks;
  svn_ra_svn__list_t *revprop_list;
  apr_hash_t *revprop_table;
  const svn_delta_editor_t *editor;
  void *edit_baton;
  svn_boolean_t aborted;
  commit_callback_baton_t ccb;
  svn_revnum_t new_rev;
  authz_baton_t ab;

  ab.server = b;
  ab.conn = conn;

  if (params->nelts == 1)
    {
      /* Clients before 1.2 don't send lock-tokens, keep-locks,
         and rev-props fields. */
      FUNC1(FUNC11(params, "c", &log_msg));
      lock_tokens = NULL;
      keep_locks = TRUE;
      revprop_list = NULL;
    }
  else
    {
      /* Clients before 1.5 don't send the rev-props field. */
      FUNC1(FUNC11(params, "clb?l", &log_msg,
                                      &lock_tokens, &keep_locks,
                                      &revprop_list));
    }

  /* The handling for locks is a little problematic, because the
     protocol won't let us send several auth requests once one has
     succeeded.  So we request write access and a username before
     adding tokens (if we have any), and subsequently fail if a lock
     violates authz. */
  FUNC1(FUNC5(conn, pool, b, svn_authz_write,
                           NULL,
                           (lock_tokens && lock_tokens->nelts)));

  /* Authorize the lock tokens and give them to the FS if we got
     any. */
  if (lock_tokens && lock_tokens->nelts)
    FUNC0(FUNC2(lock_tokens, b, pool));

  /* Ignore LOG_MSG, per the protocol.  See ra_svn_commit(). */
  if (revprop_list)
    FUNC1(FUNC10(revprop_list, pool, &revprop_table));
  else
    {
      revprop_table = FUNC3(pool);
      FUNC7(revprop_table, SVN_PROP_REVISION_LOG,
                    FUNC16(log_msg, pool));
    }

  /* Get author from the baton, making sure clients can't circumvent
     the authentication via the revision props. */
  FUNC7(revprop_table, SVN_PROP_REVISION_AUTHOR,
                b->client_info->user
                   ? FUNC16(b->client_info->user, pool)
                   : NULL);

  ccb.pool = pool;
  ccb.new_rev = &new_rev;
  ccb.date = &date;
  ccb.author = &author;
  ccb.post_commit_err = &post_commit_err;
  /* ### Note that svn_repos_get_commit_editor5 actually wants a decoded URL. */
  FUNC0(FUNC15
              (&editor, &edit_baton, b->repository->repos, NULL,
               FUNC9(b->repository->repos_url, pool),
               b->repository->fs_path->data, revprop_table,
               commit_done, &ccb,
               authz_commit_cb, &ab, pool));
  FUNC1(FUNC12(conn, pool, ""));
  FUNC1(FUNC14(conn, pool, editor, edit_baton,
                                   &aborted, FALSE));
  if (!aborted)
    {
      FUNC1(FUNC4(b, conn, pool, "%s",
                          FUNC8(new_rev, pool)));
      FUNC1(FUNC17(conn, pool, b));

      /* In tunnel mode, deltify before answering the client, because
         answering may cause the client to terminate the connection
         and thus kill the server.  But otherwise, deltify after
         answering the client, to avoid user-visible delay. */

      if (b->client_info->tunnel)
        FUNC1(FUNC6(b->repository->fs, new_rev, pool));

      /* Unlock the paths. */
      if (! keep_locks && lock_tokens && lock_tokens->nelts)
        FUNC1(FUNC18(lock_tokens, b, pool));

      FUNC1(FUNC13(conn, pool, "r(?c)(?c)(?c)",
                                      new_rev, date, author, post_commit_err));

      if (! b->client_info->tunnel)
        FUNC1(FUNC6(b->repository->fs, new_rev, pool));
    }
  return SVN_NO_ERROR;
}
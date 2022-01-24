#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_3__* priv; } ;
typedef  TYPE_2__ svn_ra_session_t ;
typedef  int /*<<< orphan*/  svn_ra_lock_callback_t ;
struct TYPE_8__ {int /*<<< orphan*/  repos; TYPE_1__* fs_path; } ;
typedef  TYPE_3__ svn_ra_local__session_baton_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct lock_baton_t {int /*<<< orphan*/ * cb_err; int /*<<< orphan*/  is_lock; int /*<<< orphan*/  fs_path; void* lock_baton; int /*<<< orphan*/  lock_func; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;
struct TYPE_6__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lock_cb ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 char* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct lock_baton_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC12(svn_ra_session_t *session,
                     apr_hash_t *path_tokens,
                     svn_boolean_t force,
                     svn_ra_lock_callback_t lock_func,
                     void *lock_baton,
                     apr_pool_t *pool)
{
  svn_ra_local__session_baton_t *sess = session->priv;
  apr_hash_t *targets = FUNC2(pool);
  apr_hash_index_t *hi;
  svn_error_t *err;
  struct lock_baton_t baton = {0};

  /* A username is absolutely required to unlock a path. */
  FUNC0(FUNC6(session, pool));

  for (hi = FUNC1(pool, path_tokens); hi; hi = FUNC3(hi))
    {
      const char *abs_path = FUNC9(sess->fs_path->data,
                                              FUNC4(hi), pool);
      const char *token = FUNC5(hi);

      FUNC10(targets, abs_path, token);
    }

  baton.lock_func = lock_func;
  baton.lock_baton = lock_baton;
  baton.fs_path = sess->fs_path->data;
  baton.is_lock = FALSE;
  baton.cb_err = SVN_NO_ERROR;

  err = FUNC11(sess->repos, targets, force, lock_cb, &baton,
                                 pool, pool);

  if (err && baton.cb_err)
    FUNC7(err, baton.cb_err);
  else if (!err)
    err = baton.cb_err;

  return FUNC8(err);
}
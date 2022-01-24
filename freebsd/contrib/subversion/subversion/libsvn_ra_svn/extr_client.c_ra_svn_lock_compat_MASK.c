#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_ra_svn_conn_t ;
struct TYPE_5__ {int /*<<< orphan*/ * conn; } ;
typedef  TYPE_1__ svn_ra_svn__session_baton_t ;
typedef  int /*<<< orphan*/  svn_ra_svn__list_t ;
struct TYPE_6__ {TYPE_1__* priv; } ;
typedef  TYPE_2__ svn_ra_session_t ;
typedef  int /*<<< orphan*/ * (* svn_ra_lock_callback_t ) (void*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;
typedef  int /*<<< orphan*/  svn_lock_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,void const**,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *FUNC15(svn_ra_session_t *session,
                                       apr_hash_t *path_revs,
                                       const char *comment,
                                       svn_boolean_t steal_lock,
                                       svn_ra_lock_callback_t lock_func,
                                       void *lock_baton,
                                       apr_pool_t *pool)
{
  svn_ra_svn__session_baton_t *sess = session->priv;
  svn_ra_svn_conn_t* conn = sess->conn;
  svn_ra_svn__list_t *list;
  apr_hash_index_t *hi;
  apr_pool_t *iterpool = FUNC11(pool);

  for (hi = FUNC3(pool, path_revs); hi; hi = FUNC4(hi))
    {
      svn_lock_t *lock;
      const void *key;
      const char *path;
      void *val;
      svn_revnum_t *revnum;
      svn_error_t *err, *callback_err = NULL;

      FUNC10(iterpool);

      FUNC5(hi, &key, NULL, &val);
      path = key;
      revnum = val;

      FUNC1(FUNC14(conn, iterpool, path, comment,
                                         steal_lock, *revnum));

      /* Servers before 1.2 doesn't support locking.  Check this here. */
      FUNC1(FUNC7(FUNC6(sess, pool),
                                     FUNC0("Server doesn't support "
                                        "the lock command")));

      err = FUNC13(conn, iterpool, "l", &list);

      if (!err)
        FUNC1(FUNC8(list, iterpool, &lock));

      if (err && !FUNC2(err))
        return err;

      if (lock_func)
        callback_err = lock_func(lock_baton, path, TRUE, err ? NULL : lock,
                                 err, iterpool);

      FUNC9(err);

      if (callback_err)
        return callback_err;
    }

  FUNC12(iterpool);

  return SVN_NO_ERROR;
}
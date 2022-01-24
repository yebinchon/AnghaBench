#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/ * (* svn_fs_lock_callback_t ) (void*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct unlock_args {char const* token; int /*<<< orphan*/  break_lock; int /*<<< orphan*/  path; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct unlock_args*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  txn_body_unlock ; 

svn_error_t *
FUNC13(svn_fs_t *fs,
                    apr_hash_t *targets,
                    svn_boolean_t break_lock,
                    svn_fs_lock_callback_t lock_callback,
                    void *lock_baton,
                    apr_pool_t *result_pool,
                    apr_pool_t *scratch_pool)
{
  apr_hash_index_t *hi;
  svn_error_t *cb_err = SVN_NO_ERROR;
  apr_pool_t *iterpool = FUNC11(scratch_pool);

  FUNC0(FUNC8(fs, TRUE));

  for (hi = FUNC1(scratch_pool, targets); hi; hi = FUNC2(hi))
    {
      struct unlock_args args;
      const char *path = FUNC3(hi);
      const char *token = FUNC4(hi);
      svn_error_t *err;

      FUNC10(iterpool);
      args.path = FUNC7(path, result_pool);
      args.token = token;
      args.break_lock = break_lock;

      err = FUNC9(fs, txn_body_unlock, &args, TRUE,
                                   iterpool);
      if (!cb_err && lock_callback)
        cb_err = lock_callback(lock_baton, path, NULL, err, iterpool);
      FUNC5(err);
    }
  FUNC12(iterpool);

  return FUNC6(cb_err);
}
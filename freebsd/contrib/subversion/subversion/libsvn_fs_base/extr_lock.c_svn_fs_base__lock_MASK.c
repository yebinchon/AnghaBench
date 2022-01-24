#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_lock_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
struct TYPE_3__ {scalar_t__ current_rev; int /*<<< orphan*/  token; } ;
typedef  TYPE_1__ svn_fs_lock_target_t ;
typedef  int /*<<< orphan*/ * (* svn_fs_lock_callback_t ) (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  void* svn_boolean_t ;
struct lock_args {char const* comment; scalar_t__ current_rev; int /*<<< orphan*/  path; int /*<<< orphan*/ * result_pool; int /*<<< orphan*/  expiration_date; void* steal_lock; void* is_dav_comment; int /*<<< orphan*/  token; int /*<<< orphan*/ ** lock_p; } ;
typedef  int /*<<< orphan*/  apr_time_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_NO_SUCH_REVISION ; 
 scalar_t__ SVN_INVALID_REVNUM ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct lock_args*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  txn_body_lock ; 

svn_error_t *
FUNC17(svn_fs_t *fs,
                  apr_hash_t *targets,
                  const char *comment,
                  svn_boolean_t is_dav_comment,
                  apr_time_t expiration_date,
                  svn_boolean_t steal_lock,
                  svn_fs_lock_callback_t lock_callback,
                  void *lock_baton,
                  apr_pool_t *result_pool,
                  apr_pool_t *scratch_pool)
{
  apr_hash_index_t *hi;
  svn_error_t *cb_err = SVN_NO_ERROR;
  svn_revnum_t youngest_rev = SVN_INVALID_REVNUM;
  apr_pool_t *iterpool = FUNC15(scratch_pool);

  FUNC0(FUNC11(fs, TRUE));
  FUNC0(FUNC13(&youngest_rev, fs, scratch_pool));

  for (hi = FUNC3(scratch_pool, targets); hi; hi = FUNC4(hi))
    {
      struct lock_args args;
      const char *path = FUNC5(hi);
      const svn_fs_lock_target_t *target = FUNC6(hi);
      svn_lock_t *lock;
      svn_error_t *err = NULL;

      FUNC14(iterpool);
      args.lock_p = &lock;
      args.path = FUNC10(path, result_pool);
      args.token = target->token;
      args.comment = comment;
      args.is_dav_comment = is_dav_comment;
      args.steal_lock = steal_lock;
      args.expiration_date = expiration_date;
      args.current_rev = target->current_rev;
      args.result_pool = result_pool;

      if (FUNC1(target->current_rev))
        {
          if (target->current_rev > youngest_rev)
            err = FUNC8(SVN_ERR_FS_NO_SUCH_REVISION, NULL,
                                    FUNC2("No such revision %ld"),
                                    target->current_rev);
        }

      if (!err)
        err = FUNC12(fs, txn_body_lock, &args, TRUE,
                                     iterpool);
      if (!cb_err && lock_callback)
        cb_err = lock_callback(lock_baton, args.path, lock, err, iterpool);
      FUNC7(err);
    }
  FUNC16(iterpool);

  return FUNC9(cb_err);
}
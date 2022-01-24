#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  fs; int /*<<< orphan*/  hooks_env_path; } ;
typedef  TYPE_1__ svn_repos_t ;
typedef  int /*<<< orphan*/  svn_fs_lock_target_t ;
typedef  int /*<<< orphan*/ * (* svn_fs_lock_callback_t ) (void*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;
typedef  int /*<<< orphan*/  svn_fs_access_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct lock_many_baton_t {TYPE_5__* paths; int /*<<< orphan*/ * pool; int /*<<< orphan*/ * cb_err; void* lock_baton; int /*<<< orphan*/ * (* lock_callback ) (void*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/  need_lock; } ;
typedef  int /*<<< orphan*/  apr_time_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;
struct TYPE_8__ {scalar_t__ nelts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_NO_USER ; 
 int /*<<< orphan*/  SVN_ERR_REPOS_POST_LOCK_HOOK_FAILED ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 char* FUNC1 (char*) ; 
 TYPE_5__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lock_many_cb ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (char const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct lock_many_baton_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC22 (TYPE_1__*,int /*<<< orphan*/ *,TYPE_5__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC23 (TYPE_1__*,int /*<<< orphan*/ *,char const**,char const*,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC25(svn_repos_t *repos,
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
  svn_error_t *err, *cb_err = SVN_NO_ERROR;
  svn_fs_access_t *access_ctx = NULL;
  const char *username = NULL;
  apr_hash_t *hooks_env;
  apr_hash_t *pre_targets = FUNC5(scratch_pool);
  apr_hash_index_t *hi;
  apr_pool_t *iterpool = FUNC20(scratch_pool);
  struct lock_many_baton_t baton;

  if (!FUNC3(targets))
    return SVN_NO_ERROR;

  /* Parse the hooks-env file (if any). */
  FUNC0(FUNC24(&hooks_env, repos->hooks_env_path,
                                     scratch_pool, scratch_pool));

  FUNC0(FUNC15(&access_ctx, repos->fs));
  if (access_ctx)
    FUNC0(FUNC14(&username, access_ctx));

  if (! username)
    return FUNC12
      (SVN_ERR_FS_NO_USER, NULL,
       "Cannot lock path, no authenticated username available.");

  /* Run pre-lock hook.  This could throw error, preventing
     svn_fs_lock2() from happening for that path. */
  for (hi = FUNC4(scratch_pool, targets); hi; hi = FUNC6(hi))
    {
      const char *new_token;
      svn_fs_lock_target_t *target;
      const char *path = FUNC7(hi);

      FUNC19(iterpool);

      err = FUNC23(repos, hooks_env, &new_token, path,
                                      username, comment, steal_lock, iterpool);
      if (err)
        {
          if (!cb_err && lock_callback)
            cb_err = lock_callback(lock_baton, path, NULL, err, iterpool);
          FUNC9(err);

          continue;
        }

      target = FUNC8(hi);
      if (*new_token)
        FUNC17(target, new_token);
      FUNC18(pre_targets, path, target);
    }

  if (!FUNC3(pre_targets))
    return FUNC13(cb_err);

  baton.need_lock = TRUE;
  baton.paths = FUNC2(scratch_pool, FUNC3(pre_targets),
                               sizeof(const char *));
  baton.lock_callback = lock_callback;
  baton.lock_baton = lock_baton;
  baton.cb_err = cb_err;
  baton.pool = scratch_pool;

  err = FUNC16(repos->fs, pre_targets, comment,
                         is_dav_comment, expiration_date, steal_lock,
                         lock_many_cb, &baton, result_pool, iterpool);

  /* If there are locks run the post-lock even if there is an error. */
  if (baton.paths->nelts)
    {
      svn_error_t *perr = FUNC22(repos, hooks_env,
                                                     baton.paths, username,
                                                     iterpool);
      if (perr)
        {
          perr = FUNC12(SVN_ERR_REPOS_POST_LOCK_HOOK_FAILED, perr,
                            FUNC1("Locking succeeded, but post-lock hook failed"));
          err = FUNC11(err, perr);
        }
    }

  FUNC21(iterpool);

  if (err && cb_err)
    FUNC10(err, cb_err);
  else if (!err)
    err = cb_err;

  return FUNC13(err);
}
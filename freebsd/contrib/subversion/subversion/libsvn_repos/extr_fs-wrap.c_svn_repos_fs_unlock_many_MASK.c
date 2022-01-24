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
typedef  int /*<<< orphan*/ * (* svn_fs_lock_callback_t ) (void*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;
typedef  int /*<<< orphan*/  svn_fs_access_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct lock_many_baton_t {TYPE_5__* paths; int /*<<< orphan*/ * pool; int /*<<< orphan*/ * cb_err; void* lock_baton; int /*<<< orphan*/ * (* lock_callback ) (void*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/  need_lock; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;
struct TYPE_8__ {scalar_t__ nelts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_NO_USER ; 
 int /*<<< orphan*/  SVN_ERR_REPOS_POST_UNLOCK_HOOK_FAILED ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_5__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 
 char* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lock_many_cb ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (char const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct lock_many_baton_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC21 (TYPE_1__*,int /*<<< orphan*/ *,TYPE_5__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC22 (TYPE_1__*,int /*<<< orphan*/ *,char const*,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC24(svn_repos_t *repos,
                         apr_hash_t *targets,
                         svn_boolean_t break_lock,
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
  apr_pool_t *iterpool = FUNC19(scratch_pool);
  struct lock_many_baton_t baton;

  if (!FUNC3(targets))
    return SVN_NO_ERROR;

  /* Parse the hooks-env file (if any). */
  FUNC0(FUNC23(&hooks_env, repos->hooks_env_path,
                                     scratch_pool, scratch_pool));

  FUNC0(FUNC15(&access_ctx, repos->fs));
  if (access_ctx)
    FUNC0(FUNC14(&username, access_ctx));

  if (! break_lock && ! username)
    return FUNC12
      (SVN_ERR_FS_NO_USER, NULL,
       FUNC1("Cannot unlock, no authenticated username available"));

  /* Run pre-unlock hook.  This could throw error, preventing
     svn_fs_unlock_many() from happening for that path. */
  for (hi = FUNC4(scratch_pool, targets); hi; hi = FUNC6(hi))
    {
      const char *path = FUNC7(hi);
      const char *token = FUNC8(hi);

      FUNC18(iterpool);

      err = FUNC22(repos, hooks_env, path, username, token,
                                        break_lock, iterpool);
      if (err)
        {
          if (!cb_err && lock_callback)
            cb_err = lock_callback(lock_baton, path, NULL, err, iterpool);
          FUNC9(err);

          continue;
        }

      FUNC17(pre_targets, path, token);
    }

  if (!FUNC3(pre_targets))
    return FUNC13(cb_err);

  baton.need_lock = FALSE;
  baton.paths = FUNC2(scratch_pool, FUNC3(pre_targets),
                               sizeof(const char *));
  baton.lock_callback = lock_callback;
  baton.lock_baton = lock_baton;
  baton.cb_err = cb_err;
  baton.pool = scratch_pool;

  err = FUNC16(repos->fs, pre_targets, break_lock,
                           lock_many_cb, &baton, result_pool, iterpool);

  /* If there are 'unlocks' run the post-unlock even if there is an error. */
  if (baton.paths->nelts)
    {
      svn_error_t *perr = FUNC21(repos, hooks_env,
                                                       baton.paths,
                                                       username, iterpool);
      if (perr)
        {
          perr = FUNC12(SVN_ERR_REPOS_POST_UNLOCK_HOOK_FAILED, perr,
                           FUNC1("Unlock succeeded, but post-unlock hook failed"));
          err = FUNC11(err, perr);
        }
    }

  FUNC20(iterpool);

  if (err && cb_err)
    FUNC10(err, cb_err);
  else if (!err)
    err = cb_err;

  return FUNC13(err);
}
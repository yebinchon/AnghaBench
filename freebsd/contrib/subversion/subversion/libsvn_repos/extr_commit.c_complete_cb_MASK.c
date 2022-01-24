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
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct ev2_baton {TYPE_1__* repos; int /*<<< orphan*/  commit_baton; int /*<<< orphan*/  commit_cb; int /*<<< orphan*/  txn_name; int /*<<< orphan*/  inner; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
struct TYPE_3__ {int /*<<< orphan*/  fs; int /*<<< orphan*/  hooks_env_path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_CONFLICT ; 
 int /*<<< orphan*/  SVN_ERR_REPOS_POST_COMMIT_HOOK_FAILED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC15(void *baton,
            apr_pool_t *scratch_pool)
{
  struct ev2_baton *eb = baton;
  svn_revnum_t revision;
  svn_error_t *post_commit_err;
  const char *conflict_path;
  svn_error_t *err;
  const char *post_commit_errstr;
  apr_hash_t *hooks_env;

  /* Parse the hooks-env file (if any). */
  FUNC0(FUNC13(&hooks_env, eb->repos->hooks_env_path,
                                     scratch_pool, scratch_pool));

  /* The transaction has been fully edited. Let the pre-commit hook
     have a look at the thing.  */
  FUNC0(FUNC12(eb->repos, hooks_env,
                                      eb->txn_name, scratch_pool));

  /* Hook is done. Let's do the actual commit.  */
  FUNC0(FUNC10(&revision, &post_commit_err, &conflict_path,
                                eb->inner, scratch_pool, scratch_pool));

  /* Did a conflict occur during the commit process?  */
  if (conflict_path != NULL)
    return FUNC8(SVN_ERR_FS_CONFLICT, NULL,
                             FUNC3("Conflict at '%s'"), conflict_path);

  /* Since did not receive an error during the commit process, and no
     conflict was specified... we committed a revision. Run the hooks.
     Other errors may have occurred within the FS (specified by the
     POST_COMMIT_ERR localvar), but we need to run the hooks.  */
  FUNC1(FUNC2(revision));
  err = FUNC11(eb->repos, hooks_env, revision,
                                     eb->txn_name, scratch_pool);
  if (err)
    err = FUNC7(SVN_ERR_REPOS_POST_COMMIT_HOOK_FAILED, err,
                           FUNC3("Commit succeeded, but post-commit hook failed"));

  /* Combine the FS errors with the hook errors, and stringify.  */
  err = FUNC6(post_commit_err, err);
  if (err)
    {
      post_commit_errstr = FUNC14(err, scratch_pool);
      FUNC5(err);
    }
  else
    {
      post_commit_errstr = NULL;
    }

  return FUNC9(FUNC4(eb->commit_cb, eb->commit_baton,
                                          eb->repos->fs, revision,
                                          post_commit_errstr,
                                          scratch_pool));
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_string_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
struct TYPE_6__ {int /*<<< orphan*/  fs; int /*<<< orphan*/  hooks_env_path; } ;
typedef  TYPE_1__ svn_repos_t ;
typedef  scalar_t__ svn_repos_revision_access_level_t ;
typedef  int /*<<< orphan*/  svn_repos_authz_func_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_AUTHZ_UNREADABLE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/  const**,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/  const*,char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/  const*,char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_repos_revision_access_full ; 

svn_error_t *
FUNC10(svn_repos_t *repos,
                              svn_revnum_t rev,
                              const char *author,
                              const char *name,
                              const svn_string_t *const *old_value_p,
                              const svn_string_t *new_value,
                              svn_boolean_t use_pre_revprop_change_hook,
                              svn_boolean_t use_post_revprop_change_hook,
                              svn_repos_authz_func_t authz_read_func,
                              void *authz_read_baton,
                              apr_pool_t *pool)
{
  svn_repos_revision_access_level_t readability;

  FUNC0(FUNC9(&readability, repos, rev,
                                          authz_read_func, authz_read_baton,
                                          pool));

  if (readability == svn_repos_revision_access_full)
    {
      const svn_string_t *old_value;
      char action;
      apr_hash_t *hooks_env;

      FUNC0(FUNC8(name, new_value, pool));

      /* Fetch OLD_VALUE for svn_fs_change_rev_prop2(). */
      if (old_value_p)
        {
          old_value = *old_value_p;
        }
      else
        {
          /* Get OLD_VALUE anyway, in order for ACTION and OLD_VALUE arguments
           * to the hooks to be accurate. */
          svn_string_t *old_value2;

          FUNC0(FUNC4(&old_value2, repos->fs, rev, name,
                                        TRUE, pool, pool));
          old_value = old_value2;
        }

      /* Prepare ACTION. */
      if (! new_value)
        action = 'D';
      else if (! old_value)
        action = 'A';
      else
        action = 'M';

      /* Parse the hooks-env file (if any, and if to be used). */
      if (use_pre_revprop_change_hook || use_post_revprop_change_hook)
        FUNC0(FUNC7(&hooks_env, repos->hooks_env_path,
                                           pool, pool));

      /* ### currently not passing the old_value to hooks */
      if (use_pre_revprop_change_hook)
        FUNC0(FUNC6(repos, hooks_env, rev,
                                                    author, name, new_value,
                                                    action, pool));

      FUNC0(FUNC3(repos->fs, rev, name,
                                      &old_value, new_value, pool));

      if (use_post_revprop_change_hook)
        FUNC0(FUNC5(repos, hooks_env, rev,
                                                     author, name, old_value,
                                                     action, pool));
    }
  else  /* rev is either unreadable or only partially readable */
    {
      return FUNC2
        (SVN_ERR_AUTHZ_UNREADABLE, NULL,
         FUNC1("Write denied:  not authorized to read all of revision %ld"), rev);
    }

  return SVN_NO_ERROR;
}
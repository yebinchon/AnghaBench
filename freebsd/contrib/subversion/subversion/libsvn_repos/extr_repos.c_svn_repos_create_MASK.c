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
struct TYPE_6__ {int /*<<< orphan*/  format; int /*<<< orphan*/  db_path; int /*<<< orphan*/  fs; int /*<<< orphan*/  fs_type; } ;
typedef  TYPE_1__ svn_repos_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_FS_TYPE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_REPOS_BAD_ARGS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_FS_CONFIG_FS_TYPE ; 
 int /*<<< orphan*/  SVN_FS_CONFIG_PRE_1_4_COMPATIBLE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_REPOS__FORMAT ; 
 int /*<<< orphan*/  SVN_REPOS__FORMAT_NUMBER ; 
 int /*<<< orphan*/  SVN_REPOS__FORMAT_NUMBER_LEGACY ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char const**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 char* FUNC20 (char const*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC21(svn_repos_t **repos_p,
                 const char *path,
                 const char *unused_1,
                 const char *unused_2,
                 apr_hash_t *config,
                 apr_hash_t *fs_config,
                 apr_pool_t *result_pool)
{
  svn_repos_t *repos;
  svn_error_t *err;
  apr_pool_t *scratch_pool = FUNC18(result_pool);
  const char *root_path;
  const char *local_abspath;

  /* Allocate a repository object, filling in the format we will create. */
  repos = FUNC4(path, result_pool);
  repos->format = SVN_REPOS__FORMAT_NUMBER;

  /* Discover the type of the filesystem we are about to create. */
  repos->fs_type = FUNC15(fs_config, SVN_FS_CONFIG_FS_TYPE,
                                         DEFAULT_FS_TYPE);
  if (FUNC14(fs_config, SVN_FS_CONFIG_PRE_1_4_COMPATIBLE, FALSE))
    repos->format = SVN_REPOS__FORMAT_NUMBER_LEGACY;

  /* Don't create a repository inside another repository. */
  FUNC0(FUNC7(&local_abspath, path, scratch_pool));
  root_path = FUNC20(local_abspath, scratch_pool);
  if (root_path != NULL)
    {
      if (FUNC6(root_path, local_abspath) == 0)
        return FUNC11(SVN_ERR_REPOS_BAD_ARGS, NULL,
                                 FUNC2("'%s' is an existing repository"),
                                 FUNC9(root_path,
                                                        scratch_pool));
      else
        return FUNC11(SVN_ERR_REPOS_BAD_ARGS, NULL,
                                 FUNC2("'%s' is a subdirectory of an existing "
                                   "repository " "rooted at '%s'"),
                                 FUNC9(local_abspath,
                                                        scratch_pool),
                                 FUNC9(root_path,
                                                        scratch_pool));
    }

  /* Create the various files and subdirectories for the repository. */
  FUNC1(FUNC3(repos, path, fs_config, scratch_pool),
            FUNC2("Repository creation failed"));

  /* Lock if needed. */
  FUNC0(FUNC5(repos, FALSE, FALSE, scratch_pool));

  /* Create an environment for the filesystem. */
  if ((err = FUNC13(&repos->fs, repos->db_path, fs_config,
                            result_pool, scratch_pool)))
    {
      /* If there was an error making the filesytem, e.g. unknown/supported
       * filesystem type.  Clean up after ourselves.  Yes this is safe because
       * create_repos_structure will fail if the path existed before we started
       * so we can't accidentally remove a directory that previously existed.
       */
      FUNC19(scratch_pool); /* Release lock to allow deleting dir */

      return FUNC12(
                   FUNC10(
                        err,
                        FUNC16(path, FALSE, NULL, NULL,
                                           result_pool)));
    }

  /* This repository is ready.  Stamp it with a format number. */
  FUNC0(FUNC17
          (FUNC8(path, SVN_REPOS__FORMAT, scratch_pool),
           repos->format, scratch_pool));

  FUNC19(scratch_pool); /* Release lock */

  *repos_p = repos;
  return SVN_NO_ERROR;
}
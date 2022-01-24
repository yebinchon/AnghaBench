#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_config_t ;
struct TYPE_4__ {void* username_case; int /*<<< orphan*/ * authzdb; int /*<<< orphan*/  repos; } ;
typedef  TYPE_1__ repository_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 void* CASE_ASIS ; 
 void* CASE_FORCE_LOWER ; 
 void* CASE_FORCE_UPPER ; 
 int /*<<< orphan*/  SVN_CONFIG_OPTION_AUTHZ_DB ; 
 int /*<<< orphan*/  SVN_CONFIG_OPTION_FORCE_USERNAME_CASE ; 
 int /*<<< orphan*/  SVN_CONFIG_OPTION_GROUPS_DB ; 
 int /*<<< orphan*/  SVN_CONFIG_SECTION_GENERAL ; 
 int /*<<< orphan*/  SVN_ERR_AUTHZ_INVALID_CONFIG ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC0 (char const**,TYPE_1__*,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ **,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC5(repository_t *repository,
                  const char *repos_root,
                  svn_config_t *cfg,
                  apr_pool_t *pool)
{
  const char *authzdb_path;
  const char *groupsdb_path;
  svn_error_t *err;

  /* Read authz configuration. */
  FUNC2(cfg, &authzdb_path, SVN_CONFIG_SECTION_GENERAL,
                 SVN_CONFIG_OPTION_AUTHZ_DB, NULL);

  FUNC2(cfg, &groupsdb_path, SVN_CONFIG_SECTION_GENERAL,
                 SVN_CONFIG_OPTION_GROUPS_DB, NULL);

  if (authzdb_path)
    {
      const char *case_force_val;

      /* Canonicalize and add the base onto the authzdb_path (if needed). */
      err = FUNC0(&authzdb_path, repository,
                                     repos_root, pool);

      /* Same for the groupsdb_path if it is present. */
      if (groupsdb_path && !err)
        err = FUNC0(&groupsdb_path, repository,
                                       repos_root, pool);

      if (!err)
        err = FUNC4(&repository->authzdb, authzdb_path,
                                    groupsdb_path, TRUE, repository->repos,
                                    pool, pool);

      if (err)
        return FUNC3(SVN_ERR_AUTHZ_INVALID_CONFIG, err, NULL);

      /* Are we going to be case-normalizing usernames when we consult
       * this authz file? */
      FUNC2(cfg, &case_force_val,
                     SVN_CONFIG_SECTION_GENERAL,
                     SVN_CONFIG_OPTION_FORCE_USERNAME_CASE, NULL);
      if (case_force_val)
        {
          if (FUNC1(case_force_val, "upper") == 0)
            repository->username_case = CASE_FORCE_UPPER;
          else if (FUNC1(case_force_val, "lower") == 0)
            repository->username_case = CASE_FORCE_LOWER;
          else
            repository->username_case = CASE_ASIS;
        }
    }
  else
    {
      repository->authzdb = NULL;
      repository->username_case = CASE_ASIS;
    }

  return SVN_NO_ERROR;
}
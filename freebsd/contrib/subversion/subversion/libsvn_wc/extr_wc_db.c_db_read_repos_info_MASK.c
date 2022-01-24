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
typedef  int /*<<< orphan*/  svn_wc__db_wcroot_t ;
typedef  scalar_t__ svn_wc__db_status_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  scalar_t__ apr_int64_t ;

/* Variables and functions */
 scalar_t__ INVALID_REPOS_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const**,int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char const* FUNC6 (char const*,char const*) ; 
 char* FUNC7 (char const*,int /*<<< orphan*/ *) ; 
 char* FUNC8 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char const**,char const**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_wc__db_status_added ; 
 scalar_t__ svn_wc__db_status_deleted ; 
 scalar_t__ svn_wc__db_status_excluded ; 

__attribute__((used)) static svn_error_t *
FUNC11(svn_revnum_t *revision,
                   const char **repos_relpath,
                   apr_int64_t *repos_id,
                   svn_wc__db_wcroot_t *wcroot,
                   const char *local_relpath,
                   apr_pool_t *result_pool,
                   apr_pool_t *scratch_pool)
{
  svn_wc__db_status_t status;

  FUNC0(FUNC3(&status, NULL, revision, repos_relpath, repos_id, NULL,
                    NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                    NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                    NULL, NULL, NULL,
                    wcroot, local_relpath, result_pool, scratch_pool));

  if ((repos_relpath && !*repos_relpath)
      || (repos_id && *repos_id == INVALID_REPOS_ID))
    {
      if (status == svn_wc__db_status_added)
        {
          FUNC0(FUNC4(NULL, NULL, repos_relpath, repos_id, NULL,
                                NULL, NULL, NULL, NULL, NULL,
                                wcroot, local_relpath,
                                result_pool, scratch_pool));
        }
      else if (status == svn_wc__db_status_deleted)
        {
          const char *base_del_relpath;
          const char *work_del_relpath;

          FUNC0(FUNC5(&base_del_relpath, NULL,
                                &work_del_relpath,
                                NULL, wcroot,
                                local_relpath,
                                scratch_pool,
                                scratch_pool));

          if (work_del_relpath)
            {
              /* The parent of the WORKING delete, must be an addition */
              const char *work_relpath = NULL;

              /* work_del_relpath should not be NULL. However, we have
               * observed instances where that assumption was not met.
               * Bail out in that case instead of crashing with a segfault.
               */
              FUNC1(work_del_relpath != NULL);
              work_relpath = FUNC7(work_del_relpath,
                                                 scratch_pool);

              FUNC0(FUNC4(NULL, NULL, repos_relpath, repos_id,
                                    NULL, NULL, NULL, NULL, NULL, NULL,
                                    wcroot, work_relpath,
                                    scratch_pool, scratch_pool));

              if (repos_relpath)
                *repos_relpath = FUNC8(
                                    *repos_relpath,
                                    FUNC6(work_relpath,
                                                             local_relpath),
                                    result_pool);
            }
          else if (base_del_relpath)
            {
              FUNC0(FUNC10(NULL, NULL, revision,
                                                        repos_relpath,
                                                        repos_id,
                                                        NULL, NULL, NULL,
                                                        NULL, NULL, NULL,
                                                        NULL, NULL, NULL, NULL,
                                                        wcroot,
                                                        base_del_relpath,
                                                        scratch_pool,
                                                        scratch_pool));

              if (repos_relpath)
                *repos_relpath = FUNC8(
                                    *repos_relpath,
                                    FUNC6(base_del_relpath,
                                                             local_relpath),
                                    result_pool);
            }
          else
            FUNC2();
        }
      else if (status == svn_wc__db_status_excluded)
        {
          const char *parent_relpath;
          const char *name;

          /* A BASE excluded would have had repository information, so
             we have a working exclude, which must be below an addition */

          FUNC9(&parent_relpath, &name, local_relpath,
                            scratch_pool);
          FUNC0(FUNC4(NULL, NULL, repos_relpath, repos_id, NULL,
                                NULL, NULL, NULL, NULL, NULL,
                                wcroot, parent_relpath,
                                scratch_pool, scratch_pool));

          if (repos_relpath)
            *repos_relpath = FUNC8(*repos_relpath, name,
                                              result_pool);

          return SVN_NO_ERROR;
        }
      else
        {
          /* All working statee are explicitly handled and all base statee
             have a repos_relpath */
          FUNC2();
        }
    }

  return SVN_NO_ERROR;
}
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
typedef  int /*<<< orphan*/  svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  scalar_t__ apr_int64_t ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  SVN_ERR_WC_PATH_NOT_FOUND ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC7 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char const**,char const**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_wc__db_status_excluded ; 
 scalar_t__ svn_wc__db_status_not_present ; 
 scalar_t__ svn_wc__db_status_server_excluded ; 

__attribute__((used)) static svn_error_t *
FUNC10(svn_boolean_t *is_switched,
               svn_node_kind_t *kind,
               svn_wc__db_wcroot_t *wcroot,
               const char *local_relpath,
               apr_pool_t *scratch_pool)
{
  svn_wc__db_status_t status;
  apr_int64_t repos_id;
  const char *repos_relpath;
  const char *name;
  const char *parent_local_relpath;
  apr_int64_t parent_repos_id;
  const char *parent_repos_relpath;

  FUNC1(*local_relpath != '\0'); /* Handled in wrapper */

  FUNC0(FUNC4(&status, kind, NULL, &repos_relpath, &repos_id, NULL,
                    NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                    NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                    wcroot, local_relpath, scratch_pool, scratch_pool));

  if (status == svn_wc__db_status_server_excluded
      || status == svn_wc__db_status_excluded
      || status == svn_wc__db_status_not_present)
    {
      return FUNC6(
                    SVN_ERR_WC_PATH_NOT_FOUND, NULL,
                    FUNC2("The node '%s' was not found."),
                    FUNC3(wcroot, local_relpath,
                                           scratch_pool));
    }
  else if (! repos_relpath)
    {
      /* Node is shadowed; easy out */
      if (is_switched)
        *is_switched = FALSE;

      return SVN_NO_ERROR;
    }

  if (! is_switched)
    return SVN_NO_ERROR;

  FUNC8(&parent_local_relpath, &name, local_relpath, scratch_pool);

  FUNC0(FUNC9(NULL, NULL, NULL,
                                            &parent_repos_relpath,
                                            &parent_repos_id, NULL, NULL, NULL,
                                            NULL, NULL, NULL, NULL, NULL,
                                            NULL, NULL,
                                            wcroot, parent_local_relpath,
                                            scratch_pool, scratch_pool));

  if (repos_id != parent_repos_id)
    *is_switched = TRUE;
  else
    {
      const char *expected_relpath;

      expected_relpath = FUNC7(parent_repos_relpath, name,
                                          scratch_pool);

      *is_switched = (FUNC5(expected_relpath, repos_relpath) != 0);
    }

  return SVN_NO_ERROR;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_wc__internal_status_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_io_dirent2_t ;
struct TYPE_9__ {scalar_t__ apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
struct svn_wc__db_info_t {scalar_t__ kind; scalar_t__ status; scalar_t__ conflicted; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ; 
 scalar_t__ TRUE ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,char const*,char const*,char const*,struct svn_wc__db_info_t const*,int /*<<< orphan*/  const*,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/  const*,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 char* FUNC6 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 scalar_t__ FUNC8 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 TYPE_1__* FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/  const**,char const*,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_unknown ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**,char const**,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const* const,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**,char const**,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const* const,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC15 (struct svn_wc__db_info_t const**,int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_wc__db_status_excluded ; 
 scalar_t__ svn_wc__db_status_not_present ; 
 scalar_t__ svn_wc__db_status_server_excluded ; 

__attribute__((used)) static svn_error_t *
FUNC16(svn_wc__internal_status_t **status,
                svn_wc__db_t *db,
                const char *local_abspath,
                svn_boolean_t check_working_copy,
                apr_pool_t *result_pool,
                apr_pool_t *scratch_pool)
{
  const svn_io_dirent2_t *dirent = NULL;
  const char *parent_repos_relpath;
  const char *parent_repos_root_url;
  const char *parent_repos_uuid;
  const struct svn_wc__db_info_t *info;
  svn_boolean_t is_root = FALSE;
  svn_error_t *err;

  FUNC1(FUNC7(local_abspath));

  err = FUNC15(&info, db, local_abspath,
                                    !check_working_copy,
                                    scratch_pool, scratch_pool);

  if (err)
    {
      if (err->apr_err != SVN_ERR_WC_PATH_NOT_FOUND)
        return FUNC10(err);

      FUNC9(err);
      info = NULL;

      if (check_working_copy)
        FUNC0(FUNC11(&dirent, local_abspath, FALSE, TRUE,
                                    scratch_pool, scratch_pool));
    }
  else if (check_working_copy)
    FUNC0(FUNC4(&dirent, db, local_abspath,
                                          scratch_pool, scratch_pool));

  if (!info
      || info->kind == svn_node_unknown
      || info->status == svn_wc__db_status_not_present
      || info->status == svn_wc__db_status_server_excluded
      || info->status == svn_wc__db_status_excluded)
    return FUNC10(FUNC3(status,
                                                db, local_abspath,
                                                dirent,
                                                info ? info->conflicted : FALSE,
                                                FALSE /* is_ignored */,
                                                result_pool, scratch_pool));

  if (FUNC8(local_abspath, FUNC5(local_abspath)))
    is_root = TRUE;
  else
    FUNC0(FUNC13(&is_root, db, local_abspath, scratch_pool));

  /* Even though passing parent_repos_* is not required, assemble_status needs
     these values to determine if a node is switched */
  if (!is_root)
    {
      const char *const parent_abspath = FUNC6(local_abspath,
                                                            scratch_pool);
      if (check_working_copy)
        FUNC0(FUNC14(NULL, NULL, NULL,
                                     &parent_repos_relpath,
                                     &parent_repos_root_url,
                                     &parent_repos_uuid,
                                     NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                     NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                     NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                     db, parent_abspath,
                                     result_pool, scratch_pool));
      else
        FUNC0(FUNC12(NULL, NULL, NULL,
                                         &parent_repos_relpath,
                                         &parent_repos_root_url,
                                         &parent_repos_uuid,
                                         NULL, NULL, NULL, NULL, NULL,
                                         NULL, NULL, NULL, NULL, NULL,
                                         db, parent_abspath,
                                         result_pool, scratch_pool));
    }
  else
    {
      parent_repos_root_url = NULL;
      parent_repos_relpath = NULL;
      parent_repos_uuid = NULL;
    }

  return FUNC10(FUNC2(status, db, local_abspath,
                                         parent_repos_root_url,
                                         parent_repos_relpath,
                                         parent_repos_uuid,
                                         info,
                                         dirent,
                                         TRUE /* get_all */,
                                         FALSE, check_working_copy,
                                         NULL /* repos_lock */,
                                         result_pool, scratch_pool));
}
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
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  scalar_t__ svn_wc__db_status_t ;
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_ENTRY_NOT_FOUND ; 
 int /*<<< orphan*/  SVN_ERR_NODE_UNEXPECTED_KIND ; 
 int /*<<< orphan*/  SVN_ERR_WC_SCHEDULE_CONFLICT ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ svn_node_dir ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (scalar_t__*,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_wc__db_status_added ; 
 scalar_t__ svn_wc__db_status_deleted ; 
 scalar_t__ svn_wc__db_status_excluded ; 
 scalar_t__ svn_wc__db_status_not_present ; 
 scalar_t__ svn_wc__db_status_server_excluded ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC9(const char **repos_root_url,
                        const char **repos_uuid,
                        svn_wc__db_t *db,
                        const char *local_abspath,
                        apr_pool_t *result_pool,
                        apr_pool_t *scratch_pool)
{
  const char *parent_abspath = FUNC2(local_abspath, scratch_pool);
  svn_wc__db_status_t parent_status;
  svn_node_kind_t parent_kind;
  svn_error_t *err;

  FUNC0(FUNC8(db, parent_abspath, scratch_pool));

  err = FUNC6(&parent_status, &parent_kind, NULL,
                             NULL, repos_root_url, repos_uuid, NULL, NULL,
                             NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                             NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                             NULL, NULL, NULL,
                             db, parent_abspath, result_pool, scratch_pool);

  if (err
      || parent_status == svn_wc__db_status_not_present
      || parent_status == svn_wc__db_status_excluded
      || parent_status == svn_wc__db_status_server_excluded)
    {
      return
        FUNC4(SVN_ERR_ENTRY_NOT_FOUND, err,
                          FUNC1("Can't find parent directory's node while"
                            " trying to add '%s'"),
                          FUNC3(local_abspath,
                                                 scratch_pool));
    }
  else if (parent_status == svn_wc__db_status_deleted)
    {
      return
        FUNC4(SVN_ERR_WC_SCHEDULE_CONFLICT, NULL,
                          FUNC1("Can't add '%s' to a parent directory"
                            " scheduled for deletion"),
                          FUNC3(local_abspath,
                                                 scratch_pool));
    }
  else if (parent_kind != svn_node_dir)
    return FUNC4(SVN_ERR_NODE_UNEXPECTED_KIND, NULL,
                             FUNC1("Can't schedule an addition of '%s'"
                               " below a not-directory node"),
                             FUNC3(local_abspath,
                                                    scratch_pool));

  /* If we haven't found the repository info yet, find it now. */
  if ((repos_root_url && ! *repos_root_url)
      || (repos_uuid && ! *repos_uuid))
    {
      if (parent_status == svn_wc__db_status_added)
        FUNC0(FUNC7(NULL, NULL, NULL,
                                         repos_root_url, repos_uuid, NULL,
                                         NULL, NULL, NULL,
                                         db, parent_abspath,
                                         result_pool, scratch_pool));
      else
        FUNC0(FUNC5(NULL, NULL, NULL, NULL,
                                         repos_root_url, repos_uuid, NULL,
                                         NULL, NULL, NULL, NULL, NULL, NULL,
                                         NULL, NULL, NULL,
                                         db, parent_abspath,
                                         result_pool, scratch_pool));
    }

  return SVN_NO_ERROR;
}
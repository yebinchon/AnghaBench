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
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_filesize_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_checksum_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_NODE_UNEXPECTED_KIND ; 
 int /*<<< orphan*/  SVN_ERR_WC_PATH_NOT_FOUND ; 
 int /*<<< orphan*/  SVN_ERR_WC_PATH_UNEXPECTED_STATUS ; 
 int /*<<< orphan*/  SVN_INVALID_FILESIZE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ svn_node_file ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_wc__db_status_added ; 
 scalar_t__ svn_wc__db_status_excluded ; 
 scalar_t__ svn_wc__db_status_incomplete ; 
 scalar_t__ svn_wc__db_status_not_present ; 
 scalar_t__ svn_wc__db_status_server_excluded ; 

svn_error_t *
FUNC6(svn_stream_t **contents,
                              svn_filesize_t *size,
                              svn_wc__db_t *db,
                              const char *local_abspath,
                              apr_pool_t *result_pool,
                              apr_pool_t *scratch_pool)
{
  svn_wc__db_status_t status;
  svn_node_kind_t kind;
  const svn_checksum_t *sha1_checksum;

  if (size)
    *size = SVN_INVALID_FILESIZE;

  FUNC0(FUNC5(&status, &kind, NULL, NULL, NULL, NULL,
                                        &sha1_checksum, NULL, NULL, NULL,
                                        db, local_abspath,
                                        scratch_pool, scratch_pool));

  /* Sanity */
  if (kind != svn_node_file)
    return FUNC3(SVN_ERR_NODE_UNEXPECTED_KIND, NULL,
                             FUNC1("Can only get the pristine contents of files; "
                               "'%s' is not a file"),
                             FUNC2(local_abspath,
                                                    scratch_pool));

  if (status == svn_wc__db_status_added && !sha1_checksum)
    {
      /* Simply added. The pristine base does not exist. */
      *contents = NULL;
      return SVN_NO_ERROR;
    }
  else if (status == svn_wc__db_status_not_present)
    /* We know that the delete of this node has been committed.
       This should be the same as if called on an unknown path. */
    return FUNC3(SVN_ERR_WC_PATH_NOT_FOUND, NULL,
                             FUNC1("Cannot get the pristine contents of '%s' "
                               "because its delete is already committed"),
                             FUNC2(local_abspath,
                                                    scratch_pool));
  else if (status == svn_wc__db_status_server_excluded
      || status == svn_wc__db_status_excluded
      || status == svn_wc__db_status_incomplete)
    return FUNC3(SVN_ERR_WC_PATH_UNEXPECTED_STATUS, NULL,
                             FUNC1("Cannot get the pristine contents of '%s' "
                               "because it has an unexpected status"),
                             FUNC2(local_abspath,
                                                    scratch_pool));
  if (sha1_checksum)
    FUNC0(FUNC4(contents, size, db, local_abspath,
                                     sha1_checksum,
                                     result_pool, scratch_pool));
  else
    *contents = NULL;

  return SVN_NO_ERROR;
}
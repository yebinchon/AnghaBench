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
struct TYPE_3__ {int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ svn_wc_context_t ;
typedef  scalar_t__ svn_wc__db_status_t ;
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_checksum_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_OS_DEFAULT ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_WC_PATH_FOUND ; 
 int /*<<< orphan*/  SVN_ERR_WC_PATH_UNEXPECTED_STATUS ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_dir ; 
 scalar_t__ svn_node_file ; 
 scalar_t__ svn_node_none ; 
 scalar_t__ svn_node_symlink ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_wc__db_status_added ; 
 scalar_t__ svn_wc__db_status_incomplete ; 
 scalar_t__ svn_wc__db_status_normal ; 

svn_error_t *
FUNC8(svn_wc_context_t *wc_ctx,
               const char *local_abspath,
               svn_boolean_t use_commit_times,
               apr_pool_t *scratch_pool)
{
  /* ### If ever revved: Add cancel func. */
  svn_wc__db_status_t status;
  svn_node_kind_t kind;
  svn_node_kind_t disk_kind;
  const svn_checksum_t *checksum;

  FUNC0(FUNC5(local_abspath, &disk_kind, scratch_pool));

  if (disk_kind != svn_node_none)
    return FUNC4(SVN_ERR_WC_PATH_FOUND, NULL,
                             FUNC1("The existing node '%s' can not be restored."),
                             FUNC3(local_abspath,
                                                    scratch_pool));

  FUNC0(FUNC7(&status, &kind, NULL, NULL, NULL, NULL, NULL,
                               NULL, NULL, NULL, &checksum, NULL, NULL, NULL, NULL,
                               NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                               NULL, NULL, NULL, NULL,
                               wc_ctx->db, local_abspath,
                               scratch_pool, scratch_pool));

  if (status != svn_wc__db_status_normal
      && !((status == svn_wc__db_status_added
            || status == svn_wc__db_status_incomplete)
           && (kind == svn_node_dir
               || (kind == svn_node_file && checksum != NULL)
               /* || (kind == svn_node_symlink && target)*/)))
    {
      return FUNC4(SVN_ERR_WC_PATH_UNEXPECTED_STATUS, NULL,
                               FUNC1("The node '%s' can not be restored."),
                               FUNC3(local_abspath,
                                                      scratch_pool));
    }

  if (kind == svn_node_file || kind == svn_node_symlink)
    FUNC0(FUNC2(wc_ctx->db, local_abspath, use_commit_times,
                         FALSE /*mark_resolved_text_conflict*/,
                         NULL, NULL /* cancel func, baton */,
                         scratch_pool));
  else
    FUNC0(FUNC6(local_abspath, APR_OS_DEFAULT, scratch_pool));

  return SVN_NO_ERROR;
}
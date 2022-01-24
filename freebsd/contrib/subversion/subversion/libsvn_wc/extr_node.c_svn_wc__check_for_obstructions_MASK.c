#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_wc_notify_state_t ;
struct TYPE_12__ {int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ svn_wc_context_t ;
typedef  int svn_wc__db_status_t ;
typedef  scalar_t__ svn_node_kind_t ;
struct TYPE_13__ {scalar_t__ apr_err; } ;
typedef  TYPE_2__ svn_error_t ;
typedef  int /*<<< orphan*/  svn_depth_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ; 
 TYPE_2__* SVN_NO_ERROR ; 
 scalar_t__ TRUE ; 
 TYPE_2__* FUNC2 (scalar_t__*,scalar_t__,int,scalar_t__) ; 
 int /*<<< orphan*/  svn_depth_unknown ; 
 char const* FUNC3 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 TYPE_2__* FUNC5 (char const*,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_dir ; 
 scalar_t__ svn_node_none ; 
 TYPE_2__* FUNC6 (scalar_t__*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC7 (int*,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
#define  svn_wc__db_status_added 134 
#define  svn_wc__db_status_deleted 133 
#define  svn_wc__db_status_excluded 132 
#define  svn_wc__db_status_incomplete 131 
#define  svn_wc__db_status_normal 130 
#define  svn_wc__db_status_not_present 129 
#define  svn_wc__db_status_server_excluded 128 
 int /*<<< orphan*/  svn_wc_notify_state_inapplicable ; 
 int /*<<< orphan*/  svn_wc_notify_state_missing ; 
 int /*<<< orphan*/  svn_wc_notify_state_obstructed ; 

svn_error_t *
FUNC8(svn_wc_notify_state_t *obstruction_state,
                               svn_node_kind_t *kind,
                               svn_boolean_t *deleted,
                               svn_boolean_t *excluded,
                               svn_depth_t *parent_depth,
                               svn_wc_context_t *wc_ctx,
                               const char *local_abspath,
                               svn_boolean_t no_wcroot_check,
                               apr_pool_t *scratch_pool)
{
  svn_wc__db_status_t status;
  svn_node_kind_t db_kind;
  svn_node_kind_t disk_kind;
  svn_error_t *err;

  *obstruction_state = svn_wc_notify_state_inapplicable;
  if (kind)
    *kind = svn_node_none;
  if (deleted)
    *deleted = FALSE;
  if (excluded)
    *excluded = FALSE;
  if (parent_depth)
    *parent_depth = svn_depth_unknown;

  FUNC0(FUNC5(local_abspath, &disk_kind, scratch_pool));

  err = FUNC7(&status, &db_kind, NULL, NULL, NULL, NULL, NULL,
                             NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                             NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                             NULL, NULL, NULL, NULL, NULL,
                             wc_ctx->db, local_abspath,
                             scratch_pool, scratch_pool);

  if (err && err->apr_err == SVN_ERR_WC_PATH_NOT_FOUND)
    {
      FUNC4(err);

      if (disk_kind != svn_node_none)
        {
          /* Nothing in the DB, but something on disk */
          *obstruction_state = svn_wc_notify_state_obstructed;
          return SVN_NO_ERROR;
        }

      err = FUNC7(&status, &db_kind, NULL, NULL, NULL, NULL,
                                 NULL, NULL, NULL, parent_depth, NULL, NULL,
                                 NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                 NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                 NULL,
                                 wc_ctx->db, FUNC3(local_abspath,
                                                                scratch_pool),
                                 scratch_pool, scratch_pool);

      if (err && err->apr_err == SVN_ERR_WC_PATH_NOT_FOUND)
        {
          FUNC4(err);
          /* No versioned parent; we can't add a node here */
          *obstruction_state = svn_wc_notify_state_obstructed;
          return SVN_NO_ERROR;
        }
      else
        FUNC0(err);

      if (db_kind != svn_node_dir
          || (status != svn_wc__db_status_normal
              && status != svn_wc__db_status_added))
        {
          /* The parent doesn't allow nodes to be added below it */
          *obstruction_state = svn_wc_notify_state_obstructed;
        }

      return SVN_NO_ERROR;
    }
  else
    FUNC0(err);

  /* Check for obstructing working copies */
  if (!no_wcroot_check
      && db_kind == svn_node_dir
      && status == svn_wc__db_status_normal)
    {
      svn_boolean_t is_root;
      FUNC0(FUNC6(&is_root, wc_ctx->db, local_abspath,
                                   scratch_pool));

      if (is_root)
        {
          /* Callers should handle this as unversioned */
          *obstruction_state = svn_wc_notify_state_obstructed;
          return SVN_NO_ERROR;
        }
    }

  if (kind)
    FUNC0(FUNC2(kind, db_kind, status, FALSE));

  switch (status)
    {
      case svn_wc__db_status_deleted:
        if (deleted)
          *deleted = TRUE;
        /* Fall through to svn_wc__db_status_not_present */
      case svn_wc__db_status_not_present:
        if (disk_kind != svn_node_none)
          *obstruction_state = svn_wc_notify_state_obstructed;
        break;

      case svn_wc__db_status_excluded:
      case svn_wc__db_status_server_excluded:
        if (excluded)
          *excluded = TRUE;
        /* fall through */
      case svn_wc__db_status_incomplete:
        *obstruction_state = svn_wc_notify_state_missing;
        break;

      case svn_wc__db_status_added:
      case svn_wc__db_status_normal:
        if (disk_kind == svn_node_none)
          *obstruction_state = svn_wc_notify_state_missing;
        else
          {
            svn_node_kind_t expected_kind;

            FUNC0(FUNC2(&expected_kind, db_kind,
                                                 status, FALSE));

            if (disk_kind != expected_kind)
              *obstruction_state = svn_wc_notify_state_obstructed;
          }
        break;
      default:
        FUNC1();
    }

  return SVN_NO_ERROR;
}
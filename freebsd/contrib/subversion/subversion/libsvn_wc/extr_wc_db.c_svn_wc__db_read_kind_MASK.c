#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  wc_id; int /*<<< orphan*/  sdb; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int svn_wc__db_status_t ;
typedef  int /*<<< orphan*/  svn_sqlite__stmt_t ;
typedef  void* svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  STMT_SELECT_NODE_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_WC_PATH_NOT_FOUND ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int) ; 
 int /*<<< orphan*/  kind_map ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  presence_map ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 void* svn_node_none ; 
 void* svn_node_unknown ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__*,int /*<<< orphan*/ *) ; 
 int svn_wc__db_status_base_deleted ; 
#define  svn_wc__db_status_deleted 131 
#define  svn_wc__db_status_excluded 130 
#define  svn_wc__db_status_not_present 129 
#define  svn_wc__db_status_server_excluded 128 
 int /*<<< orphan*/  FUNC15 (TYPE_1__**,char const**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC16(svn_node_kind_t *kind,
                     svn_wc__db_t *db,
                     const char *local_abspath,
                     svn_boolean_t allow_missing,
                     svn_boolean_t show_deleted,
                     svn_boolean_t show_hidden,
                     apr_pool_t *scratch_pool)
{
  svn_wc__db_wcroot_t *wcroot;
  const char *local_relpath;
  svn_sqlite__stmt_t *stmt_info;
  svn_boolean_t have_info;
  svn_wc__db_status_t status;

  FUNC1(FUNC6(local_abspath));

  FUNC0(FUNC15(&wcroot, &local_relpath, db,
                              local_abspath, scratch_pool, scratch_pool));
  FUNC2(wcroot);

  FUNC0(FUNC12(&stmt_info, wcroot->sdb,
                                    STMT_SELECT_NODE_INFO));
  FUNC0(FUNC9(stmt_info, "is", wcroot->wc_id, local_relpath));
  FUNC0(FUNC14(&have_info, stmt_info));

  if (!have_info)
    {
      if (allow_missing)
        {
          *kind = svn_node_unknown;
          FUNC0(FUNC13(stmt_info));
          return SVN_NO_ERROR;
        }
      else
        {
          FUNC0(FUNC13(stmt_info));
          return FUNC7(SVN_ERR_WC_PATH_NOT_FOUND, NULL,
                                   FUNC3("The node '%s' was not found."),
                                   FUNC5(wcroot,
                                                          local_relpath,
                                                          scratch_pool));
        }
    }

  status = FUNC11(stmt_info, 3, presence_map);

  if (show_deleted && status == svn_wc__db_status_base_deleted)
    {
      /* Let's return the kind of what is really deleted insead of what
         we have cached in the base-deleted record */

      FUNC0(FUNC14(&have_info, stmt_info));

      if (!have_info)
        {
          /* No lower layer deleted? Database inconsistency! */
          *kind = svn_node_none;
          return FUNC8(FUNC13(stmt_info));
        }
    }

  if (!(show_deleted && show_hidden))
    {
      int op_depth = FUNC10(stmt_info, 0);
      svn_boolean_t report_none = FALSE;

      if (op_depth > 0)
        FUNC0(FUNC4(&status, status));

      switch (status)
        {
          case svn_wc__db_status_not_present:
            if (! (show_hidden && show_deleted))
              report_none = TRUE;
            break;
          case svn_wc__db_status_excluded:
          case svn_wc__db_status_server_excluded:
            if (! show_hidden)
              report_none = TRUE;
            break;
          case svn_wc__db_status_deleted:
            if (! show_deleted)
              report_none = TRUE;
            break;
          default:
            break;
        }

      if (report_none)
        {
          *kind = svn_node_none;
          return FUNC8(FUNC13(stmt_info));
        }
    }

  *kind = FUNC11(stmt_info, 4, kind_map);

  return FUNC8(FUNC13(stmt_info));
}
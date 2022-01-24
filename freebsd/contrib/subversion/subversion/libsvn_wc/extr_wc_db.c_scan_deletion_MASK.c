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
typedef  scalar_t__ svn_wc__db_status_t ;
typedef  int /*<<< orphan*/  svn_sqlite__stmt_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  STMT_SELECT_DELETION_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  SVN_ERR_WC_PATH_NOT_FOUND ; 
 int /*<<< orphan*/  SVN_ERR_WC_PATH_UNEXPECTED_STATUS ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC4 (char const**,char const**,int*,int /*<<< orphan*/ *,char const*,TYPE_1__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  presence_map ; 
 int FUNC6 (char const*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 char* FUNC9 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*) ; 
 int FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_wc__db_status_base_deleted ; 
 scalar_t__ svn_wc__db_status_not_present ; 

__attribute__((used)) static svn_error_t *
FUNC17(const char **base_del_relpath,
              const char **moved_to_relpath,
              const char **work_del_relpath,
              const char **moved_to_op_root_relpath,
              svn_wc__db_wcroot_t *wcroot,
              const char *local_relpath,
              apr_pool_t *result_pool,
              apr_pool_t *scratch_pool)
{
  const char *current_relpath = local_relpath;
  svn_sqlite__stmt_t *stmt;
  svn_wc__db_status_t work_presence;
  svn_boolean_t have_row, scan, have_base;
  int op_depth;

  /* Initialize all the OUT parameters.  */
  if (base_del_relpath != NULL)
    *base_del_relpath = NULL;
  if (moved_to_relpath != NULL)
    *moved_to_relpath = NULL;
  if (work_del_relpath != NULL)
    *work_del_relpath = NULL;
  if (moved_to_op_root_relpath != NULL)
    *moved_to_op_root_relpath = NULL;

  /* If looking for moved-to info then we need to scan every path
     until we find it.  If not looking for moved-to we only need to
     check op-roots and parents of op-roots. */
  scan = (moved_to_op_root_relpath || moved_to_relpath);

  FUNC0(FUNC14(
                    &stmt, wcroot->sdb, STMT_SELECT_DELETION_INFO));

  FUNC0(FUNC10(stmt, "is", wcroot->wc_id, current_relpath));
  FUNC0(FUNC16(&have_row, stmt));
  if (!have_row)
    return FUNC7(SVN_ERR_WC_PATH_NOT_FOUND, FUNC15(stmt),
                             FUNC2("The node '%s' was not found."),
                             FUNC5(wcroot, local_relpath,
                                                    scratch_pool));

  work_presence = FUNC13(stmt, 1, presence_map);
  have_base = !FUNC12(stmt, 0);
  if (work_presence != svn_wc__db_status_not_present
      && work_presence != svn_wc__db_status_base_deleted)
    return FUNC7(SVN_ERR_WC_PATH_UNEXPECTED_STATUS,
                             FUNC15(stmt),
                             FUNC2("Expected node '%s' to be deleted."),
                             FUNC5(wcroot, local_relpath,
                                                    scratch_pool));

  op_depth = FUNC11(stmt, 2);

  /* Special case: LOCAL_RELPATH not-present within a WORKING tree, we
     treat this as an op-root.  At commit time we need to explicitly
     delete such nodes otherwise they will be present in the
     repository copy. */
  if (work_presence == svn_wc__db_status_not_present
      && work_del_relpath && !*work_del_relpath)
    {
      *work_del_relpath = FUNC3(result_pool, current_relpath);

      if (!scan && !base_del_relpath)
        {
          /* We have all we need, exit early */
          FUNC0(FUNC15(stmt));
          return SVN_NO_ERROR;
        }
    }


  while (TRUE)
    {
      svn_error_t *err;
      const char *parent_relpath;
      int current_depth = FUNC6(current_relpath);

      /* Step CURRENT_RELPATH to op-root */

      while (TRUE)
        {
          if (scan)
            {
              err = FUNC4(moved_to_relpath, moved_to_op_root_relpath,
                                 &scan, stmt, current_relpath,
                                 wcroot, local_relpath,
                                 result_pool, scratch_pool);
              if (err || (!scan
                          && !base_del_relpath
                          && !work_del_relpath))
                {
                  /* We have all we need (or an error occurred) */
                  FUNC0(FUNC15(stmt));
                  return FUNC8(err);
                }
            }

          if (current_depth <= op_depth)
            break;

          current_relpath = FUNC9(current_relpath, scratch_pool);
          --current_depth;

          if (scan || current_depth == op_depth)
            {
              FUNC0(FUNC15(stmt));
              FUNC0(FUNC10(stmt, "is", wcroot->wc_id,
                                        current_relpath));
              FUNC0(FUNC16(&have_row, stmt));
              FUNC1(have_row);
              have_base = !FUNC12(stmt, 0);
            }
        }
      FUNC0(FUNC15(stmt));

      /* Now CURRENT_RELPATH is an op-root, have a look at the parent. */

      FUNC1(current_relpath[0] != '\0'); /* Catch invalid data */
      parent_relpath = FUNC9(current_relpath, scratch_pool);
      FUNC0(FUNC10(stmt, "is", wcroot->wc_id, parent_relpath));
      FUNC0(FUNC16(&have_row, stmt));
      if (!have_row)
        {
          /* No row means no WORKING node which mean we just fell off
             the WORKING tree, so CURRENT_RELPATH is the op-root
             closest to the wc root. */
          if (have_base && base_del_relpath)
            *base_del_relpath = FUNC3(result_pool, current_relpath);
          break;
        }

      /* Still in the WORKING tree so the first time we get here
         CURRENT_RELPATH is a delete op-root in the WORKING tree. */
      if (work_del_relpath && !*work_del_relpath)
        {
          *work_del_relpath = FUNC3(result_pool, current_relpath);

          if (!scan && !base_del_relpath)
            break; /* We have all we need */
        }

      current_relpath = parent_relpath;
      op_depth = FUNC11(stmt, 2);
      have_base = !FUNC12(stmt, 0);
    }

  FUNC0(FUNC15(stmt));

  return SVN_NO_ERROR;
}
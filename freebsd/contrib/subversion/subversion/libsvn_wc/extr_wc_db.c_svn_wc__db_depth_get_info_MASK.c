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
struct TYPE_12__ {int /*<<< orphan*/  wc_id; int /*<<< orphan*/  sdb; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
typedef  scalar_t__ svn_wc__db_status_t ;
typedef  int /*<<< orphan*/  svn_sqlite__stmt_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  scalar_t__ svn_node_kind_t ;
struct TYPE_13__ {int /*<<< orphan*/  apr_err; } ;
typedef  TYPE_2__ svn_error_t ;
typedef  int /*<<< orphan*/  svn_depth_t ;
typedef  int /*<<< orphan*/  svn_checksum_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_time_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_int64_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  STMT_SELECT_DEPTH_NODE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_WC_PATH_NOT_FOUND ; 
 TYPE_2__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  depth_map ; 
 int /*<<< orphan*/  kind_map ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  presence_map ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_depth_unknown ; 
 TYPE_2__* FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC9 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ svn_node_dir ; 
 scalar_t__ svn_node_file ; 
 scalar_t__ svn_node_symlink ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*,int) ; 
 TYPE_2__* FUNC11 (int /*<<< orphan*/  const**,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int) ; 
 char* FUNC16 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_wc__db_status_incomplete ; 
 scalar_t__ svn_wc__db_status_normal ; 

svn_error_t *
FUNC22(svn_wc__db_status_t *status,
                          svn_node_kind_t *kind,
                          svn_revnum_t *revision,
                          const char **repos_relpath,
                          apr_int64_t *repos_id,
                          svn_revnum_t *changed_rev,
                          apr_time_t *changed_date,
                          const char **changed_author,
                          svn_depth_t *depth,
                          const svn_checksum_t **checksum,
                          const char **target,
                          svn_boolean_t *had_props,
                          apr_hash_t **props,
                          svn_wc__db_wcroot_t *wcroot,
                          const char *local_relpath,
                          int op_depth,
                          apr_pool_t *result_pool,
                          apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;
  svn_error_t *err = SVN_NO_ERROR;

  FUNC1(FUNC19(&stmt, wcroot->sdb,
                                    STMT_SELECT_DEPTH_NODE));
  FUNC1(FUNC10(stmt, "isd",
                            wcroot->wc_id, local_relpath, op_depth));
  FUNC1(FUNC21(&have_row, stmt));

  if (have_row)
    {
      svn_wc__db_status_t node_status = FUNC17(stmt, 2,
                                                                 presence_map);
      svn_node_kind_t node_kind = FUNC17(stmt, 3, kind_map);

      if (kind)
        {
          *kind = node_kind;
        }
      if (status)
        {
          *status = node_status;

          if (op_depth > 0)
            FUNC1(FUNC5(status, *status));
        }
      FUNC7(repos_id, revision, repos_relpath,
                                  stmt, 0, 4, 1, result_pool);

      if (changed_rev)
        {
          *changed_rev = FUNC15(stmt, 7);
        }
      if (changed_date)
        {
          *changed_date = FUNC12(stmt, 8);
        }
      if (changed_author)
        {
          /* Result may be NULL. */
          *changed_author = FUNC16(stmt, 9, result_pool);
        }
      if (depth)
        {
          if (node_kind != svn_node_dir)
            {
              *depth = svn_depth_unknown;
            }
          else
            {
              *depth = FUNC18(stmt, 10, depth_map,
                                                     svn_depth_unknown);
            }
        }
      if (checksum)
        {
          if (node_kind != svn_node_file)
            {
              *checksum = NULL;
            }
          else
            {
              err = FUNC11(checksum, stmt, 5,
                                                result_pool);
              if (err != NULL)
                err = FUNC9(
                        err->apr_err, err,
                        FUNC2("The node '%s' has a corrupt checksum value."),
                        FUNC6(wcroot, local_relpath,
                                               scratch_pool));
            }
        }
      if (target)
        {
          if (node_kind != svn_node_symlink)
            *target = NULL;
          else
            *target = FUNC16(stmt, 11, result_pool);
        }
      if (had_props)
        {
          *had_props = FUNC0(stmt, 12);
        }
      if (props)
        {
          if (node_status == svn_wc__db_status_normal
              || node_status == svn_wc__db_status_incomplete)
            {
              FUNC1(FUNC14(props, stmt, 12,
                                                    result_pool, scratch_pool));
              if (*props == NULL)
                *props = FUNC3(result_pool);
            }
          else
            {
              FUNC4(FUNC13(stmt, 12));
              *props = NULL;
            }
        }
    }
  else
    {
      err = FUNC9(SVN_ERR_WC_PATH_NOT_FOUND, NULL,
                              FUNC2("The node '%s' was not found."),
                              FUNC6(wcroot, local_relpath,
                                                     scratch_pool));
    }

  /* Note: given the composition, no need to wrap for tracing.  */
  return FUNC8(err, FUNC20(stmt));
}
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
typedef  int /*<<< orphan*/  svn_wc__db_lock_t ;
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
typedef  scalar_t__ apr_int64_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 scalar_t__ INVALID_REPOS_ID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  STMT_SELECT_BASE_NODE ; 
 int /*<<< orphan*/  STMT_SELECT_BASE_NODE_WITH_LOCK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  SVN_ERR_WC_PATH_NOT_FOUND ; 
 TYPE_2__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  depth_map ; 
 int /*<<< orphan*/  kind_map ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int,int,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  presence_map ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*,int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_depth_unknown ; 
 TYPE_2__* FUNC9 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC10 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ svn_node_dir ; 
 scalar_t__ svn_node_file ; 
 scalar_t__ svn_node_symlink ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int) ; 
 TYPE_2__* FUNC13 (int /*<<< orphan*/  const**,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int) ; 
 char* FUNC18 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_wc__db_status_incomplete ; 
 scalar_t__ svn_wc__db_status_normal ; 

svn_error_t *
FUNC24(svn_wc__db_status_t *status,
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
                                  svn_wc__db_lock_t **lock,
                                  svn_boolean_t *had_props,
                                  apr_hash_t **props,
                                  svn_boolean_t *update_root,
                                  svn_wc__db_wcroot_t *wcroot,
                                  const char *local_relpath,
                                  apr_pool_t *result_pool,
                                  apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;
  svn_error_t *err = SVN_NO_ERROR;

  FUNC1(FUNC21(&stmt, wcroot->sdb,
                                    lock ? STMT_SELECT_BASE_NODE_WITH_LOCK
                                         : STMT_SELECT_BASE_NODE));
  FUNC1(FUNC11(stmt, "is", wcroot->wc_id, local_relpath));
  FUNC1(FUNC23(&have_row, stmt));

  if (have_row)
    {
      svn_wc__db_status_t node_status = FUNC19(stmt, 2,
                                                                 presence_map);
      svn_node_kind_t node_kind = FUNC19(stmt, 3, kind_map);

      if (kind)
        {
          *kind = node_kind;
        }
      if (status)
        {
          *status = node_status;
        }
      FUNC8(repos_id, revision, repos_relpath,
                                  stmt, 0, 4, 1, result_pool);
      FUNC2(!repos_id || *repos_id != INVALID_REPOS_ID);
      FUNC2(!repos_relpath || *repos_relpath);
      if (lock)
        {
          *lock = FUNC6(stmt, 15, 16, 17, 18, result_pool);
        }
      if (changed_rev)
        {
          *changed_rev = FUNC17(stmt, 7);
        }
      if (changed_date)
        {
          *changed_date = FUNC14(stmt, 8);
        }
      if (changed_author)
        {
          /* Result may be NULL. */
          *changed_author = FUNC18(stmt, 9, result_pool);
        }
      if (depth)
        {
          if (node_kind != svn_node_dir)
            {
              *depth = svn_depth_unknown;
            }
          else
            {
              *depth = FUNC20(stmt, 10, depth_map,
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
              err = FUNC13(checksum, stmt, 5,
                                                result_pool);
              if (err != NULL)
                err = FUNC10(
                        err->apr_err, err,
                        FUNC3("The node '%s' has a corrupt checksum value."),
                        FUNC7(wcroot, local_relpath,
                                               scratch_pool));
            }
        }
      if (target)
        {
          if (node_kind != svn_node_symlink)
            *target = NULL;
          else
            *target = FUNC18(stmt, 11, result_pool);
        }
      if (had_props)
        {
          *had_props = FUNC0(stmt, 13);
        }
      if (props)
        {
          if (node_status == svn_wc__db_status_normal
              || node_status == svn_wc__db_status_incomplete)
            {
              FUNC1(FUNC16(props, stmt, 13,
                                                    result_pool, scratch_pool));
              if (*props == NULL)
                *props = FUNC4(result_pool);
            }
          else
            {
              FUNC5(FUNC15(stmt, 13));
              *props = NULL;
            }
        }
      if (update_root)
        {
          /* It's an update root iff it's a file external. */
          *update_root = FUNC12(stmt, 14);
        }
    }
  else
    {
      err = FUNC10(SVN_ERR_WC_PATH_NOT_FOUND, NULL,
                              FUNC3("The node '%s' was not found."),
                              FUNC7(wcroot, local_relpath,
                                                     scratch_pool));
    }

  /* Note: given the composition, no need to wrap for tracing.  */
  return FUNC9(err, FUNC22(stmt));
}
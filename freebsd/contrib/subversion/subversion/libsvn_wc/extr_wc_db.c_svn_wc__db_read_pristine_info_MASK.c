#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  wc_id; int /*<<< orphan*/  sdb; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  scalar_t__ svn_wc__db_status_t ;
typedef  int /*<<< orphan*/  svn_sqlite__stmt_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  scalar_t__ svn_node_kind_t ;
struct TYPE_18__ {int /*<<< orphan*/  apr_err; } ;
typedef  TYPE_2__ svn_error_t ;
typedef  int /*<<< orphan*/  svn_depth_t ;
typedef  int /*<<< orphan*/  svn_checksum_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_time_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  STMT_SELECT_NODE_INFO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_WC_PATH_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC7 (scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  depth_map ; 
 int /*<<< orphan*/  kind_map ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  presence_map ; 
 int /*<<< orphan*/  svn_depth_unknown ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 
 TYPE_2__* FUNC10 (TYPE_2__*,TYPE_2__*) ; 
 TYPE_2__* FUNC11 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC12 (TYPE_2__*) ; 
 scalar_t__ svn_node_dir ; 
 scalar_t__ svn_node_file ; 
 scalar_t__ svn_node_symlink ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*) ; 
 TYPE_2__* FUNC14 (int /*<<< orphan*/  const**,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int) ; 
 char* FUNC20 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 scalar_t__ svn_wc__db_status_base_deleted ; 
 scalar_t__ svn_wc__db_status_incomplete ; 
 scalar_t__ svn_wc__db_status_normal ; 
 int /*<<< orphan*/  FUNC27 (TYPE_1__**,char const**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC28(svn_wc__db_status_t *status,
                              svn_node_kind_t *kind,
                              svn_revnum_t *changed_rev,
                              apr_time_t *changed_date,
                              const char **changed_author,
                              svn_depth_t *depth,  /* dirs only */
                              const svn_checksum_t **checksum, /* files only */
                              const char **target, /* symlinks only */
                              svn_boolean_t *had_props,
                              apr_hash_t **props,
                              svn_wc__db_t *db,
                              const char *local_abspath,
                              apr_pool_t *result_pool,
                              apr_pool_t *scratch_pool)
{
  svn_wc__db_wcroot_t *wcroot;
  const char *local_relpath;
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;
  svn_error_t *err = NULL;
  int op_depth;
  svn_wc__db_status_t raw_status;
  svn_node_kind_t node_kind;

  FUNC2(FUNC9(local_abspath));

  FUNC1(FUNC27(&wcroot, &local_relpath, db,
                                                local_abspath,
                                                scratch_pool, scratch_pool));
  FUNC3(wcroot);

  /* Obtain the most likely to exist record first, to make sure we don't
     have to obtain the SQLite read-lock multiple times */
  FUNC1(FUNC23(&stmt, wcroot->sdb,
                                    STMT_SELECT_NODE_INFO));
  FUNC1(FUNC13(stmt, "is", wcroot->wc_id, local_relpath));
  FUNC1(FUNC25(&have_row, stmt));

  if (!have_row)
    {
      return FUNC11(SVN_ERR_WC_PATH_NOT_FOUND,
                               FUNC24(stmt),
                               FUNC4("The node '%s' was not found."),
                               FUNC8(wcroot,
                                                      local_relpath,
                                                      scratch_pool));
    }

  op_depth = FUNC15(stmt, 0);
  raw_status = FUNC21(stmt, 3, presence_map);

  if (op_depth > 0 && raw_status == svn_wc__db_status_base_deleted)
    {
      FUNC1(FUNC26(stmt));

      op_depth = FUNC15(stmt, 0);
      raw_status = FUNC21(stmt, 3, presence_map);
    }

  node_kind = FUNC21(stmt, 4, kind_map);

  if (status)
    {
      if (op_depth > 0)
        {
          err = FUNC10(err,
                                         FUNC7(
                                                    status,
                                                    raw_status));
        }
      else
        *status = raw_status;
    }
  if (kind)
    {
      *kind = node_kind;
    }
  if (changed_rev)
    {
      *changed_rev = FUNC19(stmt, 8);
    }
  if (changed_date)
    {
      *changed_date = FUNC16(stmt, 9);
    }
  if (changed_author)
    {
      *changed_author = FUNC20(stmt, 10,
                                                result_pool);
    }
  if (depth)
    {
      if (node_kind != svn_node_dir)
        {
          *depth = svn_depth_unknown;
        }
      else
        {
          *depth = FUNC22(stmt, 11, depth_map,
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
          svn_error_t *err2;
          err2 = FUNC14(checksum, stmt, 6, result_pool);

          if (err2 != NULL)
            {
              if (err)
                err = FUNC10(
                         err,
                         FUNC11(
                               err->apr_err, err2,
                              FUNC4("The node '%s' has a corrupt checksum value."),
                              FUNC8(wcroot, local_relpath,
                                                     scratch_pool)));
              else
                err = err2;
            }
        }
    }
  if (target)
    {
      if (node_kind != svn_node_symlink)
        *target = NULL;
      else
        *target = FUNC20(stmt, 12, result_pool);
    }
  if (had_props)
    {
      *had_props = FUNC0(stmt, 14);
    }
  if (props)
    {
      if (raw_status == svn_wc__db_status_normal
          || raw_status == svn_wc__db_status_incomplete)
        {
          FUNC1(FUNC18(props, stmt, 14,
                                                result_pool, scratch_pool));
          if (*props == NULL)
            *props = FUNC5(result_pool);
        }
      else
        {
          FUNC6(FUNC17(stmt, 14));
          *props = NULL;
        }
    }

  return FUNC12(
            FUNC10(err,
                                     FUNC24(stmt)));
}
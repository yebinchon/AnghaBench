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
typedef  int /*<<< orphan*/  svn_sqlite__stmt_t ;
typedef  int /*<<< orphan*/  svn_sqlite__db_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int svn_boolean_t ;
struct TYPE_3__ {scalar_t__ presence; char* repos_relpath; scalar_t__ kind; char* changed_author; int /*<<< orphan*/  inherited_props; scalar_t__ file_external; int /*<<< orphan*/  properties; int /*<<< orphan*/  recorded_time; int /*<<< orphan*/  recorded_size; int /*<<< orphan*/  checksum; int /*<<< orphan*/  local_relpath; int /*<<< orphan*/  op_depth; int /*<<< orphan*/  revision; int /*<<< orphan*/  repos_id; int /*<<< orphan*/  changed_date; int /*<<< orphan*/  changed_rev; int /*<<< orphan*/  depth; int /*<<< orphan*/  parent_relpath; int /*<<< orphan*/  wc_id; } ;
typedef  TYPE_1__ db_node_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  STMT_INSERT_NODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  SVN_ERR_WC_CORRUPT ; 
 int /*<<< orphan*/  SVN_INVALID_FILESIZE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  kind_map ; 
 int /*<<< orphan*/  presence_map ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ svn_node_dir ; 
 scalar_t__ svn_node_file ; 
 scalar_t__ svn_node_none ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_wc__db_status_base_deleted ; 
 scalar_t__ svn_wc__db_status_excluded ; 
 scalar_t__ svn_wc__db_status_incomplete ; 
 scalar_t__ svn_wc__db_status_normal ; 
 scalar_t__ svn_wc__db_status_not_present ; 
 scalar_t__ svn_wc__db_status_server_excluded ; 

__attribute__((used)) static svn_error_t *
FUNC17(svn_sqlite__db_t *sdb,
            const db_node_t *node,
            apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t present = (node->presence == svn_wc__db_status_normal
                           || node->presence == svn_wc__db_status_incomplete);

  FUNC1(node->op_depth > 0 || node->repos_relpath);

  FUNC0(FUNC15(&stmt, sdb, STMT_INSERT_NODE));
  FUNC0(FUNC14(stmt, "isdsnnnnsn",
                            node->wc_id,
                            node->local_relpath,
                            node->op_depth,
                            node->parent_relpath,
                            /* Setting depth for files? */
                            (node->kind == svn_node_dir && present)
                              ? FUNC3(node->depth)
                              : NULL));

  if (present && node->repos_relpath)
    {
      FUNC0(FUNC11(stmt, 11, node->changed_rev));
      FUNC0(FUNC8(stmt, 12, node->changed_date));
      FUNC0(FUNC12(stmt, 13, node->changed_author));
    }

  if (node->repos_relpath
      && node->presence != svn_wc__db_status_base_deleted)
    {
      FUNC0(FUNC8(stmt, 5,
                                     node->repos_id));
      FUNC0(FUNC12(stmt, 6,
                                    node->repos_relpath));
      FUNC0(FUNC11(stmt, 7, node->revision));
    }

  FUNC0(FUNC13(stmt, 8, presence_map, node->presence));

  if (node->kind == svn_node_none)
    FUNC0(FUNC12(stmt, 10, "unknown"));
  else
    FUNC0(FUNC13(stmt, 10, kind_map, node->kind));

  if (node->kind == svn_node_file && present)
    {
      if (!node->checksum
          && node->op_depth == 0
          && node->presence != svn_wc__db_status_not_present
          && node->presence != svn_wc__db_status_excluded
          && node->presence != svn_wc__db_status_server_excluded)
        return FUNC5(SVN_ERR_WC_CORRUPT, NULL,
                                 FUNC2("The file '%s' has no checksum"),
                                 FUNC4(node->local_relpath,
                                                        scratch_pool));

      FUNC0(FUNC6(stmt, 14, node->checksum,
                                        scratch_pool));

      if (node->repos_relpath)
        {
          if (node->recorded_size != SVN_INVALID_FILESIZE)
            FUNC0(FUNC8(stmt, 16, node->recorded_size));

          FUNC0(FUNC8(stmt, 17, node->recorded_time));
        }
    }

   /* ### Never set, props done later */
  if (node->properties && present && node->repos_relpath)
    FUNC0(FUNC10(stmt, 15, node->properties,
                                        scratch_pool));

  if (node->file_external)
    FUNC0(FUNC7(stmt, 20, 1));

  if (node->inherited_props && present)
    FUNC0(FUNC9(stmt, 23, node->inherited_props,
                                    scratch_pool));

  FUNC0(FUNC16(NULL, stmt));

  return SVN_NO_ERROR;
}
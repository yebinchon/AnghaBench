#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  new_version; void* cancel_baton; int /*<<< orphan*/  cancel_func; TYPE_2__* wcroot; int /*<<< orphan*/ * db; int /*<<< orphan*/  add_op_depth; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ update_local_add_baton_t ;
struct TYPE_11__ {int /*<<< orphan*/  wc_id; int /*<<< orphan*/  sdb; } ;
typedef  TYPE_2__ svn_wc__db_wcroot_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_sqlite__stmt_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_int64_t ;
struct TYPE_12__ {char const* local_relpath; int /*<<< orphan*/  skip; TYPE_1__* b; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_3__ added_node_baton_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  STMT_CREATE_UPDATE_MOVE_LIST ; 
 int /*<<< orphan*/  STMT_DELETE_WORKING_OP_DEPTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const**,char const**,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char const*,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC12(svn_revnum_t *new_rev,
                svn_wc__db_t *db,
                svn_wc__db_wcroot_t *wcroot,
                const char *local_relpath,
                svn_cancel_func_t cancel_func,
                void *cancel_baton,
                apr_pool_t *scratch_pool)
{
  update_local_add_baton_t b = { 0 };
  added_node_baton_t nb = { 0 };
  const char *repos_root_url;
  const char *repos_uuid;
  const char *repos_relpath;
  apr_int64_t repos_id;
  svn_node_kind_t new_kind;
  svn_sqlite__stmt_t *stmt;

  b.add_op_depth = FUNC1(local_relpath); /* DST op-root */

  FUNC0(FUNC11(wcroot, local_relpath, scratch_pool));

  b.db = db;
  b.wcroot = wcroot;
  b.cancel_func = cancel_func;
  b.cancel_baton = cancel_baton;

  /* Read new version info from the updated BASE node. */
  FUNC0(FUNC6(NULL, &new_kind, new_rev,
                                            &repos_relpath, &repos_id,
                                            NULL, NULL, NULL, NULL, NULL,
                                            NULL, NULL, NULL, NULL, NULL,
                                            wcroot, local_relpath,
                                            scratch_pool, scratch_pool));
  FUNC0(FUNC7(&repos_root_url, &repos_uuid, wcroot,
                                      repos_id, scratch_pool));
  b.new_version = FUNC9(repos_root_url, repos_uuid,
                                                  repos_relpath, *new_rev,
                                                  new_kind, scratch_pool);

  /* Create a new, and empty, list for notification information. */
  FUNC0(FUNC3(wcroot->sdb,
                                      STMT_CREATE_UPDATE_MOVE_LIST));

  /* Drive the editor... */
  nb.b = &b;
  nb.local_relpath = local_relpath;
  nb.skip = FALSE;
  FUNC0(FUNC10(&nb, scratch_pool));

  /* The conflict victim is now part of the base tree.
   * Remove the locally added version of the conflict victim and its children.
   * Any children we want to retain are at a higher op-depth so they won't
   * be deleted by this statement. */
  FUNC0(FUNC4(&stmt, wcroot->sdb,
                                    STMT_DELETE_WORKING_OP_DEPTH));
  FUNC0(FUNC2(stmt, "isd", wcroot->wc_id, local_relpath,
                            FUNC1(local_relpath)));
  FUNC0(FUNC5(NULL, stmt));

  /* Remove the tree conflict marker. */
  FUNC0(FUNC8(wcroot, local_relpath, db,
                                               FALSE, FALSE, TRUE,
                                               NULL, scratch_pool));
  return SVN_NO_ERROR;
}
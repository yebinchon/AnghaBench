#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {scalar_t__ src_op_depth; scalar_t__ dst_op_depth; void* cancel_baton; int /*<<< orphan*/  cancel_func; TYPE_3__* wcroot; int /*<<< orphan*/ * db; TYPE_2__* new_version; TYPE_2__* old_version; int /*<<< orphan*/  operation; int /*<<< orphan*/ * member_0; } ;
typedef  TYPE_1__ update_move_baton_t ;
typedef  int /*<<< orphan*/  svn_wc_operation_t ;
struct TYPE_17__ {int /*<<< orphan*/  peg_rev; int /*<<< orphan*/  repos_uuid; int /*<<< orphan*/  repos_url; int /*<<< orphan*/  path_in_repos; int /*<<< orphan*/  node_kind; } ;
typedef  TYPE_2__ svn_wc_conflict_version_t ;
typedef  int /*<<< orphan*/  svn_wc_conflict_reason_t ;
typedef  int /*<<< orphan*/  svn_wc_conflict_action_t ;
struct TYPE_18__ {int /*<<< orphan*/  sdb; } ;
typedef  TYPE_3__ svn_wc__db_wcroot_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
struct TYPE_19__ {char const* src_relpath; char const* dst_relpath; TYPE_1__* umb; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_4__ node_move_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  STMT_CREATE_UPDATE_MOVE_LIST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,TYPE_3__*,char const*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*,char const*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,char const*,scalar_t__,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char const**,char const**,int /*<<< orphan*/ *,TYPE_3__*,char const*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,TYPE_3__*,char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC16(svn_revnum_t *old_rev,
                                  svn_revnum_t *new_rev,
                                  svn_wc__db_t *db,
                                  svn_wc__db_wcroot_t *wcroot,
                                  const char *local_relpath,
                                  const char *delete_relpath,
                                  svn_wc_operation_t operation,
                                  svn_wc_conflict_action_t action,
                                  svn_wc_conflict_reason_t reason,
                                  svn_cancel_func_t cancel_func,
                                  void *cancel_baton,
                                  apr_pool_t *scratch_pool)
{
  update_move_baton_t umb = { NULL };
  const char *src_relpath, *dst_relpath;
  svn_wc_conflict_version_t old_version;
  svn_wc_conflict_version_t new_version;
  apr_int64_t repos_id;
  node_move_baton_t nmb = { 0 };

  FUNC1(FUNC8(delete_relpath, local_relpath));

  /* Construct editor baton. */

  FUNC0(FUNC3(&umb.src_op_depth, wcroot,
                            local_relpath, FUNC5(delete_relpath),
                            scratch_pool));

  FUNC0(FUNC13(&src_relpath, &dst_relpath, NULL,
                                            wcroot, local_relpath,
                                            umb.src_op_depth,
                                            scratch_pool, scratch_pool));

  if (dst_relpath == NULL)
    return FUNC7(SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, NULL,
                             FUNC2("The node '%s' has not been moved away"),
                             FUNC4(wcroot, local_relpath,
                                                    scratch_pool));

  umb.dst_op_depth = FUNC5(dst_relpath);

  FUNC0(FUNC15(wcroot, src_relpath, scratch_pool));
  FUNC0(FUNC15(wcroot, dst_relpath, scratch_pool));


  FUNC0(FUNC10(NULL, &new_version.node_kind,
                                    &new_version.peg_rev,
                                    &new_version.path_in_repos, &repos_id,
                                    NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                    NULL,
                                    wcroot, src_relpath, umb.src_op_depth,
                                    scratch_pool, scratch_pool));

  FUNC0(FUNC11(&new_version.repos_url,
                                      &new_version.repos_uuid,
                                      wcroot, repos_id,
                                      scratch_pool));

  FUNC0(FUNC10(NULL, &old_version.node_kind,
                                    &old_version.peg_rev,
                                    &old_version.path_in_repos, &repos_id,
                                    NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                    NULL,
                                    wcroot, dst_relpath, umb.dst_op_depth,
                                    scratch_pool, scratch_pool));

  FUNC0(FUNC11(&old_version.repos_url,
                                      &old_version.repos_uuid,
                                      wcroot, repos_id,
                                      scratch_pool));
  *old_rev = old_version.peg_rev;
  *new_rev = new_version.peg_rev;

  umb.operation = operation;
  umb.old_version= &old_version;
  umb.new_version= &new_version;
  umb.db = db;
  umb.wcroot = wcroot;
  umb.cancel_func = cancel_func;
  umb.cancel_baton = cancel_baton;

  if (umb.src_op_depth == 0)
    FUNC0(FUNC6(wcroot, src_relpath, scratch_pool));

  /* Create a new, and empty, list for notification information. */
  FUNC0(FUNC9(wcroot->sdb,
                                      STMT_CREATE_UPDATE_MOVE_LIST));

  /* Drive the editor... */

  nmb.umb = &umb;
  nmb.src_relpath = src_relpath;
  nmb.dst_relpath = dst_relpath;
  /* nmb.shadowed = FALSE; */
  /* nmb.edited = FALSE; */
  /* nmb.skip_children = FALSE; */

  /* We walk the move source (i.e. the post-update tree), comparing each node
    * with the equivalent node at the move destination and applying the update
    * to nodes at the move destination. */
  FUNC0(FUNC14(&nmb, wcroot, src_relpath, dst_relpath,
                                 scratch_pool));

  FUNC0(FUNC12(wcroot, src_relpath,
                                            umb.src_op_depth,
                                            dst_relpath, NULL, NULL,
                                            scratch_pool));

  return SVN_NO_ERROR;
}
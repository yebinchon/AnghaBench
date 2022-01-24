#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  svn_wc_conflict_version_t ;
typedef  int /*<<< orphan*/  svn_wc__db_wcroot_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_skel_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const*,char const*) ; 
 char* FUNC4 (char const*,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC5 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const**,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_wc_conflict_action_edit ; 
 int /*<<< orphan*/  svn_wc_conflict_reason_moved_away ; 
 int /*<<< orphan*/ * FUNC8 (char const*,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_wc_notify_state_inapplicable ; 
 int /*<<< orphan*/  svn_wc_notify_tree_conflict ; 
 int /*<<< orphan*/  svn_wc_operation_update ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC11(svn_wc__db_wcroot_t *wcroot,
                        const char *move_src_root_relpath,
                        int src_op_depth,
                        const char *move_src_op_root_relpath,
                        const char *move_dst_op_root_relpath,
                        svn_wc__db_t *db,
                        apr_pool_t *scratch_pool)
{
  apr_int64_t repos_id;
  const char *repos_root_url;
  const char *repos_uuid;
  const char *old_repos_relpath;
  const char *new_repos_relpath;
  svn_revnum_t old_rev;
  svn_revnum_t new_rev;
  svn_node_kind_t old_kind;
  svn_node_kind_t new_kind;
  svn_wc_conflict_version_t *old_version;
  svn_wc_conflict_version_t *new_version;
  svn_skel_t *conflict;

  /* Verify precondition: We are allowed to set a tree conflict here. */
  FUNC0(FUNC10(wcroot, move_src_root_relpath, scratch_pool));

  /* Read new (post-update) information from the new move source BASE node. */
  FUNC0(FUNC6(NULL, &new_kind, &new_rev,
                                    &new_repos_relpath, &repos_id,
                                    NULL, NULL, NULL, NULL, NULL,
                                    NULL, NULL, NULL,
                                    wcroot, move_src_op_root_relpath,
                                    src_op_depth, scratch_pool, scratch_pool));
  FUNC0(FUNC7(&repos_root_url, &repos_uuid,
                                      wcroot, repos_id, scratch_pool));

  /* Read old (pre-update) information from the move destination node.

     This potentially touches nodes that aren't locked by us, but that is not
     a problem because we have a SQLite write lock here, and all sqlite
     operations that affect move stability use a sqlite lock as well.
     (And affecting the move itself requires a write lock on the node that
      we do own the lock for: the move source)
  */
  FUNC0(FUNC6(NULL, &old_kind, &old_rev,
                                    &old_repos_relpath, NULL, NULL, NULL,
                                    NULL, NULL, NULL, NULL, NULL, NULL,
                                    wcroot, move_dst_op_root_relpath,
                                    FUNC2(move_dst_op_root_relpath),
                                    scratch_pool, scratch_pool));

  if (FUNC3(move_src_root_relpath, move_src_op_root_relpath))
    {
      /* We have information for the op-root, but need it for the node that
         we are putting the tree conflict on. Luckily we know that we have
         a clean BASE */

      const char *rpath = FUNC5(move_src_op_root_relpath,
                                                    move_src_root_relpath);

      old_repos_relpath = FUNC4(old_repos_relpath, rpath,
                                           scratch_pool);
      new_repos_relpath = FUNC4(new_repos_relpath, rpath,
                                           scratch_pool);
    }

  old_version = FUNC8(
                  repos_root_url, repos_uuid, old_repos_relpath, old_rev,
                  old_kind, scratch_pool);
  new_version = FUNC8(
                  repos_root_url, repos_uuid, new_repos_relpath, new_rev,
                  new_kind, scratch_pool);

  FUNC0(FUNC1(&conflict, wcroot, move_src_root_relpath,
                               move_dst_op_root_relpath,
                               db, old_version, new_version,
                               svn_wc_operation_update,
                               old_kind, new_kind,
                               old_repos_relpath,
                               svn_wc_conflict_reason_moved_away,
                               svn_wc_conflict_action_edit,
                               move_src_op_root_relpath,
                               scratch_pool, scratch_pool));

  FUNC0(FUNC9(wcroot, move_src_root_relpath, db,
                               svn_wc_notify_tree_conflict,
                               new_kind,
                               svn_wc_notify_state_inapplicable,
                               svn_wc_notify_state_inapplicable,
                               conflict, NULL, scratch_pool));

  return SVN_NO_ERROR;
}
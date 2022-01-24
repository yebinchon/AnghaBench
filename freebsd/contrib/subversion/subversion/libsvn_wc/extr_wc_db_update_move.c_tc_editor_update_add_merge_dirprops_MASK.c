#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  db; TYPE_4__* wcroot; int /*<<< orphan*/  new_version; } ;
typedef  TYPE_1__ update_local_add_baton_t ;
typedef  scalar_t__ svn_wc_notify_state_t ;
struct TYPE_13__ {char const* path_in_repos; int /*<<< orphan*/  peg_rev; scalar_t__ node_kind; } ;
typedef  TYPE_2__ svn_wc_conflict_version_t ;
typedef  int /*<<< orphan*/  svn_skel_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
struct TYPE_14__ {int /*<<< orphan*/  local_relpath; TYPE_1__* b; scalar_t__ skip; } ;
typedef  TYPE_3__ added_node_baton_t ;
struct TYPE_15__ {int /*<<< orphan*/  abspath; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ TRUE ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char const*,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_dir ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_wc_notify_state_conflicted ; 
 int /*<<< orphan*/  svn_wc_notify_state_inapplicable ; 
 int /*<<< orphan*/  svn_wc_notify_update_update ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC11(added_node_baton_t *nb,
                                    apr_hash_t *working_props,
                                    apr_hash_t *base_props,
                                    apr_pool_t *scratch_pool)
{
  update_local_add_baton_t *b = nb->b;
  svn_skel_t *conflict_skel = NULL;
  svn_wc_notify_state_t prop_state;
  svn_skel_t *work_items = NULL;
  svn_node_kind_t kind_on_disk;
  const char *local_abspath = FUNC1(b->wcroot->abspath,
                                              nb->local_relpath,
                                              scratch_pool);

  FUNC0(FUNC8(nb, scratch_pool));
  if (nb->skip)
    return SVN_NO_ERROR;

  /* Check for on-disk obstructions or missing files. */
  FUNC0(FUNC2(local_abspath, &kind_on_disk, scratch_pool));
  if (kind_on_disk != svn_node_dir)
    {
      FUNC0(FUNC9(nb, svn_node_dir,
                                                            kind_on_disk,
                                                            scratch_pool));
      nb->skip = TRUE;
      return SVN_NO_ERROR;
    }

  FUNC0(FUNC7(&prop_state, &conflict_skel,
                                          nb->local_relpath,
                                          base_props, working_props,
                                          b->db, b->wcroot,
                                          scratch_pool, scratch_pool));

  /* If there are any conflicts to be stored, convert them into work items. */
  if (conflict_skel && prop_state == svn_wc_notify_state_conflicted)
    {
      svn_wc_conflict_version_t *new_version;
      svn_node_kind_t new_kind;
      svn_revnum_t new_rev;
      const char *repos_relpath;

      new_version = FUNC6(nb->b->new_version,
                                                scratch_pool);
      FUNC0(FUNC5(NULL, &new_kind, &new_rev,
                                                &repos_relpath, NULL, NULL,
                                                NULL, NULL, NULL, NULL, NULL,
                                                NULL, NULL, NULL, NULL,
                                                b->wcroot, nb->local_relpath,
                                                scratch_pool, scratch_pool));
      /* Fill in conflict info templates with info for this node. */
      new_version->path_in_repos = repos_relpath;
      new_version->node_kind = new_kind;
      new_version->peg_rev = new_rev;

      /* Create conflict markers. */
      FUNC0(FUNC4(conflict_skel, NULL,
                                                  new_version, scratch_pool,
                                                  scratch_pool));
      FUNC0(FUNC3(&work_items, b->db,
                                              local_abspath,
                                              conflict_skel,
                                              scratch_pool,
                                              scratch_pool));
    }

  FUNC0(FUNC10(b->wcroot, nb->local_relpath, b->db,
                               svn_wc_notify_update_update, svn_node_dir,
                               svn_wc_notify_state_inapplicable, prop_state,
                               conflict_skel, work_items, scratch_pool));

  return SVN_NO_ERROR;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  db; TYPE_3__* wcroot; } ;
typedef  TYPE_1__ update_move_baton_t ;
typedef  int /*<<< orphan*/  svn_wc_conflict_reason_t ;
typedef  int /*<<< orphan*/  svn_skel_t ;
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_9__ {scalar_t__ skip; TYPE_1__* umb; } ;
typedef  TYPE_2__ node_move_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
struct TYPE_10__ {int /*<<< orphan*/  abspath; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,TYPE_2__*,char const*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_node_dir ; 
 scalar_t__ svn_node_none ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_wc_conflict_action_add ; 
 int /*<<< orphan*/  svn_wc_conflict_action_replace ; 
 int /*<<< orphan*/  svn_wc_conflict_reason_unversioned ; 
 int /*<<< orphan*/  svn_wc_notify_state_inapplicable ; 
 int /*<<< orphan*/  svn_wc_notify_update_add ; 
 int /*<<< orphan*/  svn_wc_notify_update_replace ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC8(node_move_baton_t *nmb,
                                 const char *dst_relpath,
                                 svn_node_kind_t old_kind,
                                 apr_hash_t *props,
                                 const char *src_relpath,
                                 apr_pool_t *scratch_pool)
{
  update_move_baton_t *b = nmb->umb;
  const char *dst_abspath;
  svn_node_kind_t wc_kind;
  svn_skel_t *work_item = NULL;
  svn_skel_t *conflict = NULL;
  svn_wc_conflict_reason_t reason = svn_wc_conflict_reason_unversioned;

  FUNC0(FUNC3(nmb, scratch_pool));
  if (nmb->skip)
    return SVN_NO_ERROR;

  dst_abspath = FUNC4(b->wcroot->abspath, dst_relpath, scratch_pool);

  /* Check for unversioned tree-conflict */
  FUNC0(FUNC5(dst_abspath, &wc_kind, scratch_pool));

  if (wc_kind == old_kind)
    wc_kind = svn_node_none; /* Node will be gone once we install */

  if (wc_kind != svn_node_none && wc_kind != old_kind) /* replace */
    {
      FUNC0(FUNC2(&conflict, nmb, dst_relpath,
                                        old_kind, svn_node_dir,
                                        reason,
                                        (old_kind == svn_node_none)
                                          ? svn_wc_conflict_action_add
                                          : svn_wc_conflict_action_replace,
                                        NULL,
                                        scratch_pool, scratch_pool));
      nmb->skip = TRUE;
    }
  else
    {
      FUNC0(FUNC1(src_relpath, dst_relpath, b->wcroot,
                                scratch_pool));
      FUNC0(FUNC6(&work_item, b->db, dst_abspath,
                                           scratch_pool, scratch_pool));
    }

  FUNC0(FUNC7(b->wcroot, dst_relpath, b->db,
                               (old_kind == svn_node_none)
                                  ? svn_wc_notify_update_add
                                  : svn_wc_notify_update_replace,
                               svn_node_dir,
                               svn_wc_notify_state_inapplicable,
                               svn_wc_notify_state_inapplicable,
                               conflict, work_item, scratch_pool));
  return SVN_NO_ERROR;
}
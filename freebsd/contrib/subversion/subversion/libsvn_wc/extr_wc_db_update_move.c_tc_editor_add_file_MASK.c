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
typedef  scalar_t__ svn_wc__db_status_t ;
typedef  int /*<<< orphan*/  svn_skel_t ;
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_checksum_t ;
struct TYPE_9__ {scalar_t__ skip; scalar_t__ shadowed; TYPE_1__* umb; } ;
typedef  TYPE_2__ node_move_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
struct TYPE_10__ {int /*<<< orphan*/  abspath; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,TYPE_2__*,char const*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_node_file ; 
 scalar_t__ svn_node_none ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_wc__db_status_added ; 
 scalar_t__ svn_wc__db_status_deleted ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_wc_conflict_action_add ; 
 int /*<<< orphan*/  svn_wc_conflict_action_replace ; 
 int /*<<< orphan*/  svn_wc_conflict_reason_added ; 
 int /*<<< orphan*/  svn_wc_conflict_reason_deleted ; 
 int /*<<< orphan*/  svn_wc_conflict_reason_replaced ; 
 int /*<<< orphan*/  svn_wc_conflict_reason_unversioned ; 
 int /*<<< orphan*/  svn_wc_notify_state_inapplicable ; 
 int /*<<< orphan*/  svn_wc_notify_update_add ; 
 int /*<<< orphan*/  svn_wc_notify_update_replace ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC8(node_move_baton_t *nmb,
                   const char *relpath,
                   svn_node_kind_t old_kind,
                   const svn_checksum_t *checksum,
                   apr_hash_t *props,
                   apr_pool_t *scratch_pool)
{
  update_move_baton_t *b = nmb->umb;
  svn_wc_conflict_reason_t reason = svn_wc_conflict_reason_unversioned;
  svn_node_kind_t wc_kind;
  const char *local_abspath;
  svn_skel_t *work_item = NULL;
  svn_skel_t *conflict = NULL;

  FUNC0(FUNC2(nmb, scratch_pool));
  if (nmb->skip)
    return SVN_NO_ERROR;

  if (nmb->shadowed)
    {
      svn_wc__db_status_t status;

      FUNC0(FUNC5(&status, &wc_kind, NULL, NULL,
                                            NULL, NULL, NULL, NULL, NULL, NULL,
                                            NULL, NULL, NULL, NULL, NULL, NULL,
                                            NULL, NULL, NULL, NULL, NULL, NULL,
                                            NULL, NULL, NULL,
                                            b->wcroot, relpath,
                                            scratch_pool, scratch_pool));

      if (status == svn_wc__db_status_deleted)
        reason = svn_wc_conflict_reason_deleted;
      else if (status != svn_wc__db_status_added)
        wc_kind = svn_node_none;
      else if (old_kind == svn_node_none)
        reason = svn_wc_conflict_reason_added;
      else
        reason = svn_wc_conflict_reason_replaced;
    }
  else
    wc_kind = svn_node_none;

  local_abspath = FUNC3(b->wcroot->abspath, relpath, scratch_pool);

  if (wc_kind == svn_node_none)
    {
      /* Check for unversioned tree-conflict */
      FUNC0(FUNC4(local_abspath, &wc_kind, scratch_pool));
    }

  if (wc_kind != svn_node_none
      && (nmb->shadowed || wc_kind != old_kind)) /* replace */
    {
      FUNC0(FUNC1(&conflict, nmb, relpath,
                                        old_kind, svn_node_file,
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
      /* Update working file. */
      FUNC0(FUNC6(&work_item, b->db,
                                            FUNC3(b->wcroot->abspath,
                                                            relpath,
                                                            scratch_pool),
                                            NULL,
                                            FALSE /*FIXME: use_commit_times?*/,
                                            TRUE  /* record_file_info */,
                                            scratch_pool, scratch_pool));
    }

  FUNC0(FUNC7(b->wcroot, relpath, b->db,
                               (old_kind == svn_node_none)
                                  ? svn_wc_notify_update_add
                                  : svn_wc_notify_update_replace,
                               svn_node_file,
                               svn_wc_notify_state_inapplicable,
                               svn_wc_notify_state_inapplicable,
                               conflict, work_item, scratch_pool));
  return SVN_NO_ERROR;
}
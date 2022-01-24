#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_client_ctx_t ;
struct TYPE_9__ {int /*<<< orphan*/  pool; struct conflict_tree_incoming_delete_details* tree_conflict_incoming_details; } ;
typedef  TYPE_1__ svn_client_conflict_t ;
struct TYPE_10__ {int /*<<< orphan*/  description; TYPE_1__* conflict; } ;
typedef  TYPE_2__ svn_client_conflict_option_t ;
struct conflict_tree_incoming_delete_details {int wc_move_target_idx; int /*<<< orphan*/ * wc_move_targets; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_11__ {int nelts; } ;
typedef  TYPE_3__ apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  SVN_ERR_INCORRECT_PARAMS ; 
 int /*<<< orphan*/  SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,struct conflict_tree_incoming_delete_details*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct conflict_tree_incoming_delete_details*,int /*<<< orphan*/ *) ; 
 char* FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 scalar_t__ svn_client_conflict_option_incoming_move_dir_merge ; 
 scalar_t__ svn_client_conflict_option_incoming_move_file_text_merge ; 
 int /*<<< orphan*/  FUNC7 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,...) ; 
 TYPE_3__* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

svn_error_t *
FUNC10(
  svn_client_conflict_option_t *option,
  int preferred_move_target_idx,
  svn_client_ctx_t *ctx,
  apr_pool_t *scratch_pool)
{
  svn_client_conflict_t *conflict = option->conflict;
  struct conflict_tree_incoming_delete_details *details;
  const char *victim_abspath;
  apr_array_header_t *move_target_wc_abspaths;

  FUNC1(FUNC6(option) ==
                 svn_client_conflict_option_incoming_move_file_text_merge ||
                 FUNC6(option) ==
                 svn_client_conflict_option_incoming_move_dir_merge);

  victim_abspath = FUNC5(conflict);
  details = conflict->tree_conflict_incoming_details;
  if (details == NULL || details->wc_move_targets == NULL)
    return FUNC8(SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, NULL,
                             FUNC2("Setting a move target requires details "
                               "for tree conflict at '%s' to be fetched "
                               "from the repository first"),
                            FUNC7(victim_abspath,
                                                   scratch_pool));

  move_target_wc_abspaths =
    FUNC9(details->wc_move_targets,
                  FUNC4(details, scratch_pool));

  if (preferred_move_target_idx < 0 ||
      preferred_move_target_idx > move_target_wc_abspaths->nelts)
    return FUNC8(SVN_ERR_INCORRECT_PARAMS, NULL,
                             FUNC2("Index '%d' is out of bounds of the possible "
                               "move target list for '%s'"),
                            preferred_move_target_idx,
                            FUNC7(victim_abspath,
                                                   scratch_pool));

  /* Record the user's preference. */
  details->wc_move_target_idx = preferred_move_target_idx;

  /* Update option description. */
  FUNC0(FUNC3(&option->description,
                                                       conflict, ctx,
                                                       details,
                                                       conflict->pool,
                                                       scratch_pool));
  return SVN_NO_ERROR;
}
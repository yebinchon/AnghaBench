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
typedef  int /*<<< orphan*/  svn_opt_revision_t ;
typedef  int /*<<< orphan*/  svn_log_message_receiver_t ;
typedef  int /*<<< orphan*/  svn_log_entry_receiver_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_client_ctx_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void**,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC3(const apr_array_header_t *targets,
                const svn_opt_revision_t *peg_revision,
                const svn_opt_revision_t *start,
                const svn_opt_revision_t *end,
                int limit,
                svn_boolean_t discover_changed_paths,
                svn_boolean_t strict_node_history,
                svn_log_message_receiver_t receiver,
                void *receiver_baton,
                svn_client_ctx_t *ctx,
                apr_pool_t *pool)
{
  svn_log_entry_receiver_t receiver2;
  void *receiver2_baton;

  FUNC2(&receiver2, &receiver2_baton,
                               receiver, receiver_baton,
                               pool);

  return FUNC0(targets, peg_revision, start, end, limit,
                         discover_changed_paths, strict_node_history, FALSE,
                         FUNC1(pool),
                         receiver2, receiver2_baton, ctx, pool);
}
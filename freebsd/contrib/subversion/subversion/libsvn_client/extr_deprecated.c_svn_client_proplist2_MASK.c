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
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_client_proplist_item_t ;
typedef  int /*<<< orphan*/  svn_client_ctx_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct proplist_receiver_baton {int /*<<< orphan*/ * pool; int /*<<< orphan*/ * props; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  proplist_receiver_cb ; 
 int /*<<< orphan*/ * FUNC2 (char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct proplist_receiver_baton*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC3(apr_array_header_t **props,
                     const char *target,
                     const svn_opt_revision_t *peg_revision,
                     const svn_opt_revision_t *revision,
                     svn_boolean_t recurse,
                     svn_client_ctx_t *ctx,
                     apr_pool_t *pool)
{
  struct proplist_receiver_baton pl_baton;

  *props = FUNC1(pool, 5, sizeof(svn_client_proplist_item_t *));
  pl_baton.props = *props;
  pl_baton.pool = pool;

  return FUNC2(target, peg_revision, revision,
                              FUNC0(recurse), NULL,
                              proplist_receiver_cb, &pl_baton, ctx, pool);
}
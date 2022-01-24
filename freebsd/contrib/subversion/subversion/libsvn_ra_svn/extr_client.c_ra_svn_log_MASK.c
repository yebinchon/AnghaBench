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
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_ra_session_t ;
typedef  int /*<<< orphan*/  svn_log_entry_receiver_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC6(svn_ra_session_t *session,
           const apr_array_header_t *paths,
           svn_revnum_t start, svn_revnum_t end,
           int limit,
           svn_boolean_t discover_changed_paths,
           svn_boolean_t strict_node_history,
           svn_boolean_t include_merged_revisions,
           const apr_array_header_t *revprops,
           svn_log_entry_receiver_t receiver,
           void *receiver_baton, apr_pool_t *pool)
{
  svn_error_t *outer_error = NULL;
  svn_error_t *err;

  /* If we don't specify paths, the session's URL is implied.

     Because the paths passed to callbacks are always relative the repos
     root, there is no need *always* sync the parent URLs despite invoking
     user-provided callbacks. */
  if (paths)
    paths = FUNC3(session, paths, pool);
  else
    FUNC0(FUNC1(session, pool));

  err = FUNC5(FUNC2(&outer_error,
                                           session, paths,
                                           start, end,
                                           limit,
                                           discover_changed_paths,
                                           strict_node_history,
                                           include_merged_revisions,
                                           revprops,
                                           receiver, receiver_baton,
                                           pool));
  return FUNC5(
            FUNC4(outer_error,
                                     err));
}
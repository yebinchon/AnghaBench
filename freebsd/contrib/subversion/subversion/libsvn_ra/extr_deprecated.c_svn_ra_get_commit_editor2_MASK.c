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
typedef  int /*<<< orphan*/  svn_ra_session_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_delta_editor_t ;
typedef  int /*<<< orphan*/  svn_commit_callback2_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_PROP_REVISION_LOG ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,void**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ *) ; 

svn_error_t *FUNC4(svn_ra_session_t *session,
                                       const svn_delta_editor_t **editor,
                                       void **edit_baton,
                                       const char *log_msg,
                                       svn_commit_callback2_t commit_callback,
                                       void *commit_baton,
                                       apr_hash_t *lock_tokens,
                                       svn_boolean_t keep_locks,
                                       apr_pool_t *pool)
{
  apr_hash_t *revprop_table = FUNC0(pool);
  if (log_msg)
    FUNC1(revprop_table, SVN_PROP_REVISION_LOG,
                  FUNC3(log_msg, pool));
  return FUNC2(session, editor, edit_baton, revprop_table,
                                   commit_callback, commit_baton,
                                   lock_tokens, keep_locks, pool);
}
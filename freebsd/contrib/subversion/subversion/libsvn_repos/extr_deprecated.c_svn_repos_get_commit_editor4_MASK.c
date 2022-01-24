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
typedef  int /*<<< orphan*/  svn_repos_t ;
typedef  int /*<<< orphan*/  svn_repos_authz_callback_t ;
typedef  int /*<<< orphan*/  svn_fs_txn_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_delta_editor_t ;
typedef  int /*<<< orphan*/  svn_commit_callback2_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_PROP_REVISION_AUTHOR ; 
 int /*<<< orphan*/  SVN_PROP_REVISION_LOG ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const**,void**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC4(const svn_delta_editor_t **editor,
                             void **edit_baton,
                             svn_repos_t *repos,
                             svn_fs_txn_t *txn,
                             const char *repos_url,
                             const char *base_path,
                             const char *user,
                             const char *log_msg,
                             svn_commit_callback2_t commit_callback,
                             void *commit_baton,
                             svn_repos_authz_callback_t authz_callback,
                             void *authz_baton,
                             apr_pool_t *pool)
{
  apr_hash_t *revprop_table = FUNC0(pool);
  if (user)
    FUNC1(revprop_table, SVN_PROP_REVISION_AUTHOR,
                  FUNC3(user, pool));
  if (log_msg)
    FUNC1(revprop_table, SVN_PROP_REVISION_LOG,
                  FUNC3(log_msg, pool));
  return FUNC2(editor, edit_baton, repos, txn,
                                      repos_url, base_path, revprop_table,
                                      commit_callback, commit_baton,
                                      authz_callback, authz_baton, pool);
}
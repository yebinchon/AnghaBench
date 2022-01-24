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
typedef  int /*<<< orphan*/  svn_repos_t ;
typedef  int /*<<< orphan*/  svn_fs_txn_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_PROP_REVISION_AUTHOR ; 
 int /*<<< orphan*/  SVN_PROP_REVISION_LOG ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC4(svn_fs_txn_t **txn_p,
                                  svn_repos_t *repos,
                                  svn_revnum_t rev,
                                  const char *author,
                                  const char *log_msg,
                                  apr_pool_t *pool)
{
  apr_hash_t *revprop_table = FUNC0(pool);
  if (author)
    FUNC1(revprop_table, SVN_PROP_REVISION_AUTHOR,
                  FUNC3(author, pool));
  if (log_msg)
    FUNC1(revprop_table, SVN_PROP_REVISION_LOG,
                  FUNC3(log_msg, pool));
  return FUNC2(txn_p, repos, rev, revprop_table,
                                            pool);
}
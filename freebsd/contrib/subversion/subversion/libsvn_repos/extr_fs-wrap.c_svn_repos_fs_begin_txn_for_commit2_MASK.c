#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
struct TYPE_7__ {int /*<<< orphan*/  client_capabilities; int /*<<< orphan*/  fs; int /*<<< orphan*/  hooks_env_path; } ;
typedef  TYPE_2__ svn_repos_t ;
typedef  int /*<<< orphan*/  svn_fs_txn_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_FS_TXN_CHECK_LOCKS ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_PROP_REVISION_AUTHOR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC10(svn_fs_txn_t **txn_p,
                                   svn_repos_t *repos,
                                   svn_revnum_t rev,
                                   apr_hash_t *revprop_table,
                                   apr_pool_t *pool)
{
  apr_array_header_t *revprops;
  const char *txn_name;
  svn_string_t *author = FUNC5(revprop_table, SVN_PROP_REVISION_AUTHOR);
  apr_hash_t *hooks_env;
  svn_error_t *err;
  svn_fs_txn_t *txn;

  /* Parse the hooks-env file (if any). */
  FUNC0(FUNC8(&hooks_env, repos->hooks_env_path,
                                     pool, pool));

  /* Begin the transaction, ask for the fs to do on-the-fly lock checks.
     We fetch its name, too, so the start-commit hook can use it.  */
  FUNC0(FUNC3(&txn, repos->fs, rev,
                            SVN_FS_TXN_CHECK_LOCKS, pool));
  err = FUNC4(&txn_name, txn, pool);
  if (err)
    return FUNC1(err, FUNC2(txn, pool));

  /* We pass the revision properties to the filesystem by adding them
     as properties on the txn.  Later, when we commit the txn, these
     properties will be copied into the newly created revision. */
  revprops = FUNC6(revprop_table, pool);
  err = FUNC9(txn, revprops, pool);
  if (err)
    return FUNC1(err, FUNC2(txn, pool));

  /* Run start-commit hooks. */
  err = FUNC7(repos, hooks_env,
                                      author ? author->data : NULL,
                                      repos->client_capabilities, txn_name,
                                      pool);
  if (err)
    return FUNC1(err, FUNC2(txn, pool));

  /* We have API promise that *TXN_P is unaffected on failure. */
  *txn_p = txn;
  return SVN_NO_ERROR;
}
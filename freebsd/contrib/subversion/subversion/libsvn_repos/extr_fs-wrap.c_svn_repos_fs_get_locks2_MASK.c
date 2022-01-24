#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
struct TYPE_3__ {int /*<<< orphan*/  fs; } ;
typedef  TYPE_1__ svn_repos_t ;
typedef  int /*<<< orphan*/  svn_repos_authz_func_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_depth_t ;
struct get_locks_baton_t {int /*<<< orphan*/ * locks; int /*<<< orphan*/  head_root; void* authz_read_baton; int /*<<< orphan*/  authz_read_func; int /*<<< orphan*/  fs; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  get_locks_callback ; 
 scalar_t__ svn_depth_empty ; 
 scalar_t__ svn_depth_files ; 
 scalar_t__ svn_depth_immediates ; 
 scalar_t__ svn_depth_infinity ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,scalar_t__,int /*<<< orphan*/ ,struct get_locks_baton_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC6(apr_hash_t **locks,
                        svn_repos_t *repos,
                        const char *path,
                        svn_depth_t depth,
                        svn_repos_authz_func_t authz_read_func,
                        void *authz_read_baton,
                        apr_pool_t *pool)
{
  apr_hash_t *all_locks = FUNC2(pool);
  svn_revnum_t head_rev;
  struct get_locks_baton_t baton;

  FUNC1((depth == svn_depth_empty) ||
                 (depth == svn_depth_files) ||
                 (depth == svn_depth_immediates) ||
                 (depth == svn_depth_infinity));

  FUNC0(FUNC5(&head_rev, repos->fs, pool));

  /* Populate our callback baton. */
  baton.fs = repos->fs;
  baton.locks = all_locks;
  baton.authz_read_func = authz_read_func;
  baton.authz_read_baton = authz_read_baton;
  FUNC0(FUNC4(&(baton.head_root), repos->fs,
                               head_rev, pool));

  /* Get all the locks. */
  FUNC0(FUNC3(repos->fs, path, depth,
                            get_locks_callback, &baton, pool));

  *locks = baton.locks;
  return SVN_NO_ERROR;
}
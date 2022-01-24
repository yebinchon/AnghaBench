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
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_client_ctx_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_ILLEGAL_TARGET ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char const*) ; 

svn_error_t *
FUNC7(const char *path,
                   svn_client_ctx_t *ctx,
                   apr_pool_t *scratch_pool)
{
  const char *local_abspath;

  if (FUNC6(path))
    return FUNC4(SVN_ERR_ILLEGAL_TARGET, NULL,
                             FUNC1("'%s' is not a local path"), path);

  FUNC0(FUNC3(&local_abspath, path, scratch_pool));

  return FUNC5(FUNC2(local_abspath,
                                             TRUE /* break_locks */,
                                             TRUE /* fix_recorded_timestamps */,
                                             TRUE /* clear_dav_cache */,
                                             TRUE /* vacuum_pristines */,
                                             FALSE /* include_externals */,
                                             ctx, scratch_pool));
}
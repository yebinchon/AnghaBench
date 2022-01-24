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
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

svn_error_t *
FUNC4(const char *dir_abspath,
                  svn_boolean_t remove_unversioned_items,
                  svn_boolean_t remove_ignored_items,
                  svn_boolean_t fix_recorded_timestamps,
                  svn_boolean_t vacuum_pristines,
                  svn_boolean_t include_externals,
                  svn_client_ctx_t *ctx,
                  apr_pool_t *scratch_pool)
{
  FUNC1(FUNC3(dir_abspath));

  FUNC0(FUNC2(dir_abspath,
                     FALSE /* break_locks */,
                     fix_recorded_timestamps,
                     FALSE /* clear_dav_cache */,
                     vacuum_pristines,
                     remove_unversioned_items,
                     remove_ignored_items,
                     include_externals,
                     ctx, scratch_pool));

  return SVN_NO_ERROR;
}
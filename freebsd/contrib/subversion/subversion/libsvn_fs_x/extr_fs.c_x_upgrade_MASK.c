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
typedef  int /*<<< orphan*/  svn_mutex__t ;
typedef  int /*<<< orphan*/  svn_fs_upgrade_notify_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC3(svn_fs_t *fs,
          const char *path,
          svn_fs_upgrade_notify_t notify_func,
          void *notify_baton,
          svn_cancel_func_t cancel_func,
          void *cancel_baton,
          svn_mutex__t *common_pool_lock,
          apr_pool_t *scratch_pool,
          apr_pool_t *common_pool)
{
  FUNC0(FUNC2(fs, path, common_pool_lock, scratch_pool, common_pool));
  return FUNC1(fs, notify_func, notify_baton,
                           cancel_func, cancel_baton, scratch_pool);
}
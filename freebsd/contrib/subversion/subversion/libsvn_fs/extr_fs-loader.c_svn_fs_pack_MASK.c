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
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_fs_pack_notify_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
struct TYPE_3__ {int /*<<< orphan*/  (* pack_fs ) (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ fs_library_vtable_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  common_pool ; 
 int /*<<< orphan*/  common_pool_lock ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

svn_error_t *
FUNC4(const char *path,
            svn_fs_pack_notify_t notify_func,
            void *notify_baton,
            svn_cancel_func_t cancel_func,
            void *cancel_baton,
            apr_pool_t *pool)
{
  fs_library_vtable_t *vtable;
  svn_fs_t *fs;

  FUNC0(FUNC1(&vtable, path, pool));
  fs = FUNC2(NULL, pool);

  FUNC0(vtable->pack_fs(fs, path, notify_func, notify_baton,
                          cancel_func, cancel_baton, common_pool_lock,
                          pool, common_pool));
  return SVN_NO_ERROR;
}
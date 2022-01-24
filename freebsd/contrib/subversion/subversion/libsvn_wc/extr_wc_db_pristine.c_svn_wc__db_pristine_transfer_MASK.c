#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ sdb; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__*,char const*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__**,char const**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC5(svn_wc__db_t *db,
                             const char *src_local_abspath,
                             const char *dst_wri_abspath,
                             svn_cancel_func_t cancel_func,
                             void *cancel_baton,
                             apr_pool_t *scratch_pool)
{
  svn_wc__db_wcroot_t *src_wcroot, *dst_wcroot;
  const char *src_relpath, *dst_relpath;

  FUNC0(FUNC4(&src_wcroot, &src_relpath,
                                                db, src_local_abspath,
                                                scratch_pool, scratch_pool));
  FUNC2(src_wcroot);
  FUNC0(FUNC4(&dst_wcroot, &dst_relpath,
                                                db, dst_wri_abspath,
                                                scratch_pool, scratch_pool));
  FUNC2(dst_wcroot);

  if (src_wcroot == dst_wcroot
      || src_wcroot->sdb == dst_wcroot->sdb)
    {
      return SVN_NO_ERROR; /* Nothing to transfer */
    }

  FUNC1(
    FUNC3(src_wcroot, dst_wcroot, src_relpath,
                          cancel_func, cancel_baton, scratch_pool),
    dst_wcroot);

  return SVN_NO_ERROR;
}
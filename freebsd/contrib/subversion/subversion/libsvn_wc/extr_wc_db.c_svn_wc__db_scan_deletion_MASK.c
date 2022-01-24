#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  abspath; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char const**,char const**,char const**,char const**,TYPE_1__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 char* FUNC6 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__**,char const**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC8(const char **base_del_abspath,
                         const char **moved_to_abspath,
                         const char **work_del_abspath,
                         const char **moved_to_op_root_abspath,
                         svn_wc__db_t *db,
                         const char *local_abspath,
                         apr_pool_t *result_pool,
                         apr_pool_t *scratch_pool)
{
  svn_wc__db_wcroot_t *wcroot;
  const char *local_relpath;
  const char *base_del_relpath, *moved_to_relpath, *work_del_relpath;
  const char *moved_to_op_root_relpath;

  FUNC1(FUNC5(local_abspath));

  FUNC0(FUNC7(&wcroot, &local_relpath, db,
                              local_abspath, scratch_pool, scratch_pool));
  FUNC3(wcroot);

  FUNC2(
    FUNC4(&base_del_relpath, &moved_to_relpath,
                  &work_del_relpath, &moved_to_op_root_relpath,
                  wcroot, local_relpath, result_pool, scratch_pool),
    wcroot);

  if (base_del_abspath)
    {
      *base_del_abspath = (base_del_relpath
                           ? FUNC6(wcroot->abspath,
                                             base_del_relpath, result_pool)
                           : NULL);
    }
  if (moved_to_abspath)
    {
      *moved_to_abspath = (moved_to_relpath
                           ? FUNC6(wcroot->abspath,
                                             moved_to_relpath, result_pool)
                           : NULL);
    }
  if (work_del_abspath)
    {
      *work_del_abspath = (work_del_relpath
                           ? FUNC6(wcroot->abspath,
                                             work_del_relpath, result_pool)
                           : NULL);
    }
  if (moved_to_op_root_abspath)
    {
      *moved_to_op_root_abspath = (moved_to_op_root_relpath
                           ? FUNC6(wcroot->abspath,
                                             moved_to_op_root_relpath,
                                             result_pool)
                           : NULL);
    }

  return SVN_NO_ERROR;
}
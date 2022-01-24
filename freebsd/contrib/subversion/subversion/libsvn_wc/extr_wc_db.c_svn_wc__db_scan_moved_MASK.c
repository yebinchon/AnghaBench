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
struct TYPE_7__ {int /*<<< orphan*/  abspath; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  scalar_t__ svn_wc__db_status_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_WC_PATH_UNEXPECTED_STATUS ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**,char const**,int*,TYPE_1__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 char* FUNC8 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC10 (char const*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_wc__db_status_moved_here ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__**,char const**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC12(const char **moved_from_abspath,
                      const char **op_root_abspath,
                      const char **op_root_moved_from_abspath,
                      const char **moved_from_delete_abspath,
                      svn_wc__db_t *db,
                      const char *local_abspath,
                      apr_pool_t *result_pool,
                      apr_pool_t *scratch_pool)
{
  svn_wc__db_wcroot_t *wcroot;
  const char *local_relpath;
  svn_wc__db_status_t status;
  const char *op_root_relpath = NULL;
  const char *moved_from_relpath = NULL;
  const char *moved_from_op_root_relpath = NULL;
  int moved_from_op_depth = -1;

  FUNC1(FUNC7(local_abspath));

  FUNC0(FUNC11(&wcroot, &local_relpath, db,
                              local_abspath, scratch_pool, scratch_pool));
  FUNC3(wcroot);

  FUNC2(
          FUNC6(&status,
                        op_root_abspath
                                ? &op_root_relpath
                                : NULL,
                        NULL, NULL,
                        NULL, NULL, NULL,
                        moved_from_abspath
                            ? &moved_from_relpath
                            : NULL,
                        (op_root_moved_from_abspath
                         || moved_from_delete_abspath)
                            ? &moved_from_op_root_relpath
                            : NULL,
                        moved_from_delete_abspath
                            ? &moved_from_op_depth
                            : NULL,
                        wcroot, local_relpath, scratch_pool, scratch_pool),
          wcroot);

  if (status != svn_wc__db_status_moved_here || !moved_from_relpath)
    return FUNC9(SVN_ERR_WC_PATH_UNEXPECTED_STATUS, NULL,
                             FUNC4("Path '%s' was not moved here"),
                             FUNC5(wcroot, local_relpath,
                                                    scratch_pool));

  if (op_root_abspath)
    *op_root_abspath = FUNC8(wcroot->abspath, op_root_relpath,
                                       result_pool);

  if (moved_from_abspath)
    *moved_from_abspath = FUNC8(wcroot->abspath, moved_from_relpath,
                                          result_pool);

  if (op_root_moved_from_abspath)
    *op_root_moved_from_abspath = FUNC8(wcroot->abspath,
                                                  moved_from_op_root_relpath,
                                                  result_pool);

  /* The deleted node is either where we moved from, or one of its ancestors */
  if (moved_from_delete_abspath)
    {
      const char *tmp = FUNC10(moved_from_op_root_relpath,
                                           moved_from_op_depth, scratch_pool);

      *moved_from_delete_abspath = FUNC8(wcroot->abspath, tmp,
                                                   scratch_pool);
    }

  return SVN_NO_ERROR;
}
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
struct TYPE_6__ {char const* abspath; } ;
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
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 char const* FUNC5 (char const*,char const*,int /*<<< orphan*/ *) ; 
 char const* FUNC6 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char const**,char const**,char const**,TYPE_1__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__**,char const**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC9(const char **move_dst_abspath,
                         const char **move_dst_op_root_abspath,
                         const char **move_src_root_abspath,
                         const char **delete_abspath,
                         svn_wc__db_t *db,
                         const char *local_abspath,
                         apr_pool_t *result_pool,
                         apr_pool_t *scratch_pool)
{
  svn_wc__db_wcroot_t *wcroot;
  const char *local_relpath;
  const char *dst_root_relpath;
  const char *src_root_relpath, *delete_relpath;

  FUNC1(FUNC4(local_abspath));


  FUNC0(FUNC8(&wcroot, &local_relpath, db,
                              local_abspath, scratch_pool, scratch_pool));
  FUNC3(wcroot);

  FUNC2(FUNC7(&src_root_relpath,
                                                        &dst_root_relpath,
                                                        &delete_relpath,
                                                        wcroot, local_relpath,
                                                        0 /* BASE */,
                                                        scratch_pool,
                                                        scratch_pool),
                      wcroot);

  if (move_dst_abspath)
    *move_dst_abspath =
        dst_root_relpath
          ? FUNC5(wcroot->abspath,
                            FUNC5(
                                    dst_root_relpath,
                                    FUNC6(src_root_relpath,
                                                              local_relpath),
                                    scratch_pool),
                            result_pool)
          : NULL;

  if (move_dst_op_root_abspath)
    *move_dst_op_root_abspath =
          dst_root_relpath
              ? FUNC5(wcroot->abspath, dst_root_relpath, result_pool)
              : NULL;

  if (move_src_root_abspath)
    *move_src_root_abspath =
          src_root_relpath
              ? FUNC5(wcroot->abspath, src_root_relpath, result_pool)
              : NULL;

  if (delete_abspath)
    *delete_abspath =
          delete_relpath
              ? FUNC5(wcroot->abspath, delete_relpath, result_pool)
              : NULL;

  return SVN_NO_ERROR;
}
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
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_skel_t ;
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 char const* OP_FILE_MOVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_WC_PATH_NOT_FOUND ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char const*,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_none ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char const**,int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC10(svn_skel_t **work_item,
                           svn_wc__db_t *db,
                           const char *wri_abspath,
                           const char *src_abspath,
                           const char *dst_abspath,
                           apr_pool_t *result_pool,
                           apr_pool_t *scratch_pool)
{
  svn_node_kind_t kind;
  const char *local_relpath;
  *work_item = FUNC7(result_pool);

  FUNC1(FUNC3(wri_abspath));
  FUNC1(FUNC3(src_abspath));
  FUNC1(FUNC3(dst_abspath));

  /* File must exist */
  FUNC0(FUNC6(src_abspath, &kind, result_pool));

  if (kind == svn_node_none)
    return FUNC5(SVN_ERR_WC_PATH_NOT_FOUND, NULL,
                             FUNC2("'%s' not found"),
                             FUNC4(src_abspath,
                                                    scratch_pool));

  FUNC0(FUNC9(&local_relpath, db, wri_abspath, dst_abspath,
                                result_pool, scratch_pool));
  FUNC8(local_relpath, *work_item, result_pool);

  FUNC0(FUNC9(&local_relpath, db, wri_abspath, src_abspath,
                                result_pool, scratch_pool));
  FUNC8(local_relpath, *work_item, result_pool);

  FUNC8(OP_FILE_MOVE, *work_item, result_pool);

  return SVN_NO_ERROR;
}
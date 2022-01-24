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
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 char const* OP_FILE_COMMIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const**,int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC4(svn_skel_t **work_item,
                             svn_wc__db_t *db,
                             const char *local_abspath,
                             svn_boolean_t props_mod,
                             apr_pool_t *result_pool,
                             apr_pool_t *scratch_pool)
{
  const char *local_relpath;
  *work_item = FUNC1(result_pool);

  FUNC0(FUNC3(&local_relpath, db, local_abspath,
                                local_abspath, result_pool, scratch_pool));

  FUNC2(local_relpath, *work_item, result_pool);

  FUNC2(OP_FILE_COMMIT, *work_item, result_pool);

  return SVN_NO_ERROR;
}
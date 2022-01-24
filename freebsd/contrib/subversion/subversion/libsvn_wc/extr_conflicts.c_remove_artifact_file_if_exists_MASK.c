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
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char const*,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_file ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC3(svn_skel_t **work_items,
                               svn_boolean_t *file_found,
                               svn_wc__db_t *db,
                               const char *wri_abspath,
                               const char *artifact_file_abspath,
                               apr_pool_t *result_pool,
                               apr_pool_t *scratch_pool)
{
  *work_items = NULL;
  if (artifact_file_abspath)
    {
      svn_node_kind_t node_kind;

      FUNC0(FUNC1(artifact_file_abspath, &node_kind,
                                scratch_pool));
      if (node_kind == svn_node_file)
        {
          FUNC0(FUNC2(work_items,
                                               db, wri_abspath,
                                               artifact_file_abspath,
                                               result_pool, scratch_pool));
          if (file_found)
            *file_found = TRUE;
        }
    }

  return SVN_NO_ERROR;
}
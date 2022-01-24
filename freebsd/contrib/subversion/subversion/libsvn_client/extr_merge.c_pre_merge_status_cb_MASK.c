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
struct TYPE_3__ {scalar_t__ node_status; int /*<<< orphan*/  depth; int /*<<< orphan*/  file_external; scalar_t__ switched; } ;
typedef  TYPE_1__ svn_wc_status3_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_depth_t ;
typedef  scalar_t__ svn_boolean_t ;
struct pre_merge_status_baton_t {int /*<<< orphan*/  missing_subtrees; int /*<<< orphan*/  shallow_subtrees; int /*<<< orphan*/  pool; int /*<<< orphan*/  switched_subtrees; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 char* FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  svn_depth_empty ; 
 int /*<<< orphan*/  svn_depth_files ; 
 scalar_t__ FUNC6 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_wc_status_missing ; 

__attribute__((used)) static svn_error_t *
FUNC8(void *baton,
                    const char *local_abspath,
                    const svn_wc_status3_t *status,
                    apr_pool_t *scratch_pool)
{
  struct pre_merge_status_baton_t *pmsb = baton;

  if (status->switched && !status->file_external)
    {
      FUNC5(pmsb->switched_subtrees, local_abspath);
    }

  if (status->depth == svn_depth_empty
      || status->depth == svn_depth_files)
    {
      const char *dup_abspath;
      svn_depth_t *depth = FUNC3(pmsb->pool, &status->depth,
                                       sizeof *depth);

      dup_abspath = FUNC4(pmsb->pool, local_abspath);

      FUNC7(pmsb->shallow_subtrees, dup_abspath, depth);
    }

  if (status->node_status == svn_wc_status_missing)
    {
      svn_boolean_t new_missing_root = TRUE;
      apr_hash_index_t *hi;

      for (hi = FUNC0(scratch_pool, pmsb->missing_subtrees);
           hi;
           hi = FUNC1(hi))
        {
          const char *missing_root_path = FUNC2(hi);

          if (FUNC6(missing_root_path,
                                     local_abspath))
            {
              new_missing_root = FALSE;
              break;
            }
        }

      if (new_missing_root)
        FUNC5(pmsb->missing_subtrees, local_abspath);
    }

  return SVN_NO_ERROR;
}
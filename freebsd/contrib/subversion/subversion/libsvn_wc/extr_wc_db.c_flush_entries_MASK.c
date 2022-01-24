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
struct TYPE_3__ {int /*<<< orphan*/  access_cache; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_depth_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ svn_depth_empty ; 
 scalar_t__ svn_depth_files ; 
 scalar_t__ svn_depth_immediates ; 
 scalar_t__ svn_depth_infinity ; 
 char* FUNC6 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (char const*,char const*) ; 

__attribute__((used)) static svn_error_t *
FUNC8(svn_wc__db_wcroot_t *wcroot,
              const char *local_abspath,
              svn_depth_t depth,
              apr_pool_t *scratch_pool)
{
  const char *parent_abspath;

  if (FUNC0(wcroot->access_cache) == 0)
    return SVN_NO_ERROR;

  FUNC5(wcroot->access_cache, local_abspath);

  if (depth > svn_depth_empty)
    {
      apr_hash_index_t *hi;

      /* Flush access batons of children within the specified depth. */
      for (hi = FUNC1(scratch_pool, wcroot->access_cache);
           hi;
           hi = FUNC2(hi))
        {
          const char *item_abspath = FUNC3(hi);

          if ((depth == svn_depth_files || depth == svn_depth_immediates) &&
              FUNC4(local_abspath, item_abspath))
            {
              FUNC5(wcroot->access_cache, item_abspath);
            }
          else if (depth == svn_depth_infinity &&
                   FUNC7(local_abspath, item_abspath))
            {
              FUNC5(wcroot->access_cache, item_abspath);
            }
        }
    }

  /* We're going to be overly aggressive here and just flush the parent
     without doing much checking.  This may hurt performance for
     legacy API consumers, but that's not our problem. :) */
  parent_abspath = FUNC6(local_abspath, scratch_pool);
  FUNC5(wcroot->access_cache, parent_abspath);

  return SVN_NO_ERROR;
}
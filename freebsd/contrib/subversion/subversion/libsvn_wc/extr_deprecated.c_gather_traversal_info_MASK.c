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
typedef  int /*<<< orphan*/  svn_wc_context_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_depth_t ;
typedef  scalar_t__ svn_boolean_t ;
struct svn_wc_traversal_info_t {int /*<<< orphan*/  depths; int /*<<< orphan*/  externals_new; int /*<<< orphan*/  externals_old; int /*<<< orphan*/  pool; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC10(svn_wc_context_t *wc_ctx,
                      const char *local_abspath,
                      const char *path,
                      svn_depth_t depth,
                      struct svn_wc_traversal_info_t *traversal_info,
                      svn_boolean_t gather_as_old,
                      svn_boolean_t gather_as_new,
                      apr_pool_t *scratch_pool)
{
  apr_hash_t *externals;
  apr_hash_t *ambient_depths;
  apr_hash_index_t *hi;

  FUNC0(FUNC9(&externals, &ambient_depths,
                                               wc_ctx, local_abspath,
                                               depth,
                                               scratch_pool, scratch_pool));

  for (hi = FUNC1(scratch_pool, externals);
       hi;
       hi = FUNC2(hi))
    {
      const char *node_abspath = FUNC3(hi);
      const char *relpath;

      relpath = FUNC5(path,
                                FUNC6(local_abspath,
                                                         node_abspath),
                                traversal_info->pool);

      if (gather_as_old)
        FUNC8(traversal_info->externals_old, relpath,
                      FUNC4(hi));

      if (gather_as_new)
        FUNC8(traversal_info->externals_new, relpath,
                      FUNC4(hi));

      FUNC8(traversal_info->depths, relpath,
                    FUNC7(ambient_depths, node_abspath));
    }

  return SVN_NO_ERROR;
}
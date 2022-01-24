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
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 char* FUNC1 (char const*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC4(char **dir,
                        svn_wc_context_t *wc_ctx,
                        const char *local_abspath,
                        apr_pool_t *result_pool,
                        apr_pool_t *scratch_pool)
{
  const char *wcroot_abspath;

  FUNC0(FUNC3(&wcroot_abspath, wc_ctx, local_abspath,
                             scratch_pool, scratch_pool));
  *dir = FUNC1(wcroot_abspath, ".svn/shelves", result_pool);
  
  /* Ensure the directory exists. (Other versions of svn don't create it.) */
  FUNC0(FUNC2(*dir, scratch_pool));

  return SVN_NO_ERROR;
}
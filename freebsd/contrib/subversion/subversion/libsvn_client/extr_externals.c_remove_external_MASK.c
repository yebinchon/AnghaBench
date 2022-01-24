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
typedef  int svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,char const*,int,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
#define  svn_node_dir 129 
#define  svn_node_file 128 

__attribute__((used)) static svn_error_t *
FUNC3(svn_boolean_t *removed,
                svn_wc_context_t *wc_ctx,
                const char *wri_abspath,
                const char *local_abspath,
                svn_node_kind_t external_kind,
                svn_cancel_func_t cancel_func,
                void *cancel_baton,
                apr_pool_t *scratch_pool)
{
  *removed = FALSE;
  switch (external_kind)
    {
      case svn_node_dir:
        FUNC1(
            FUNC2(removed,
                             wc_ctx, wri_abspath,
                             local_abspath, external_kind,
                             cancel_func, cancel_baton,
                             scratch_pool),
            wc_ctx, local_abspath, FALSE, scratch_pool);
        break;
      case svn_node_file:
      default:
        FUNC0(FUNC2(removed,
                                 wc_ctx, wri_abspath,
                                 local_abspath, external_kind,
                                 cancel_func, cancel_baton,
                                 scratch_pool));
        break;
    }

  return SVN_NO_ERROR;
}
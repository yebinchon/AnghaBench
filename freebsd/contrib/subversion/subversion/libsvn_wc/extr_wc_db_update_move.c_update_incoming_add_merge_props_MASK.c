#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_wc_notify_state_t ;
struct TYPE_4__ {int /*<<< orphan*/  abspath; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_skel_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC8(svn_wc_notify_state_t *prop_state,
                                svn_skel_t **conflict_skel,
                                const char *local_relpath,
                                apr_hash_t *base_props,
                                apr_hash_t *working_props,
                                svn_wc__db_t *db,
                                svn_wc__db_wcroot_t *wcroot,
                                apr_pool_t *result_pool,
                                apr_pool_t *scratch_pool)
{
  apr_hash_t *new_actual_props;
  apr_array_header_t *propchanges;
  const char *local_abspath = FUNC3(wcroot->abspath,
                                              local_relpath,
                                              scratch_pool);

  /*
   * Run a 3-way prop merge to update the props, using the empty props
   * as the merge base, the post-update props as the merge-left version, and
   * the current props of the added working file as the merge-right version.
   */
  FUNC0(FUNC4(&propchanges, working_props,
                         FUNC2(scratch_pool), scratch_pool));
  FUNC0(FUNC7(conflict_skel, prop_state, &new_actual_props,
                              db, local_abspath,
                              FUNC2(scratch_pool),
                              base_props, working_props, propchanges,
                              result_pool, scratch_pool));

  /* Install the new actual props. */
  if (FUNC1(new_actual_props) > 0)
    FUNC0(FUNC5(wcroot, local_relpath,
                                             new_actual_props,
                                             FUNC6(
                                                      propchanges),
                                             scratch_pool));

  return SVN_NO_ERROR;
}
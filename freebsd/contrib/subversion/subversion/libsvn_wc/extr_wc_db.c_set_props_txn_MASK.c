#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  sdb; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
typedef  int /*<<< orphan*/  svn_skel_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
struct TYPE_9__ {scalar_t__ nelts; } ;
typedef  TYPE_2__ apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,TYPE_1__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC6(svn_wc__db_wcroot_t *wcroot,
              const char *local_relpath,
              apr_hash_t *props,
              svn_boolean_t clear_recorded_info,
              const svn_skel_t *conflict,
              const svn_skel_t *work_items,
              apr_pool_t *scratch_pool)
{
  apr_hash_t *pristine_props;

  /* Check if the props are modified. If no changes, then wipe out the
     ACTUAL props.  PRISTINE_PROPS==NULL means that any
     ACTUAL props are okay as provided, so go ahead and set them.  */
  FUNC0(FUNC2(&pristine_props, wcroot, local_relpath, FALSE,
                                 scratch_pool, scratch_pool));
  if (props && pristine_props)
    {
      apr_array_header_t *prop_diffs;

      FUNC0(FUNC3(&prop_diffs, props, pristine_props,
                             scratch_pool));
      if (prop_diffs->nelts == 0)
        props = NULL;
    }

  FUNC0(FUNC5(wcroot, local_relpath, props,
                                           clear_recorded_info, scratch_pool));

  /* And finally.  */
  FUNC0(FUNC1(wcroot->sdb, work_items, scratch_pool));
  if (conflict)
    FUNC0(FUNC4(wcroot, local_relpath,
                                              conflict, scratch_pool));

  return SVN_NO_ERROR;
}
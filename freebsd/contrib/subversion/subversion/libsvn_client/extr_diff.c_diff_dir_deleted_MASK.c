#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_5__ {int /*<<< orphan*/  revision; } ;
typedef  TYPE_1__ svn_diff_source_t ;
struct svn_diff_tree_processor_t {TYPE_2__* baton; } ;
struct TYPE_6__ {scalar_t__ no_diff_deleted; } ;
typedef  TYPE_2__ diff_writer_info_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  DIFF_REVNUM_NONEXISTENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC4(const char *relpath,
                 const svn_diff_source_t *left_source,
                 /*const*/ apr_hash_t *left_props,
                 void *dir_baton,
                 const struct svn_diff_tree_processor_t *processor,
                 apr_pool_t *scratch_pool)
{
  diff_writer_info_t *dwi = processor->baton;
  apr_array_header_t *prop_changes;
  apr_hash_t *right_props;

  if (dwi->no_diff_deleted)
    return SVN_NO_ERROR;

  right_props = FUNC1(scratch_pool);
  FUNC0(FUNC3(&prop_changes, right_props,
                         left_props, scratch_pool));

  FUNC0(FUNC2(relpath,
                             left_source->revision,
                             DIFF_REVNUM_NONEXISTENT,
                             prop_changes,
                             left_props, right_props,
                             TRUE /* show_diff_header */,
                             dwi,
                             scratch_pool));

  return SVN_NO_ERROR;
}
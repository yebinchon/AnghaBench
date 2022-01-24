#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_6__ {int /*<<< orphan*/  revision; } ;
typedef  TYPE_1__ svn_diff_source_t ;
struct svn_diff_tree_processor_t {TYPE_2__* baton; } ;
struct TYPE_7__ {int /*<<< orphan*/  show_copies_as_adds; scalar_t__ no_diff_added; } ;
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
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC5(const char *relpath,
               const svn_diff_source_t *copyfrom_source,
               const svn_diff_source_t *right_source,
               /*const*/ apr_hash_t *copyfrom_props,
               /*const*/ apr_hash_t *right_props,
               void *dir_baton,
               const struct svn_diff_tree_processor_t *processor,
               apr_pool_t *scratch_pool)
{
  diff_writer_info_t *dwi = processor->baton;
  apr_hash_t *left_props;
  apr_array_header_t *prop_changes;

  if (dwi->no_diff_added)
    return SVN_NO_ERROR;

  if (copyfrom_source && !dwi->show_copies_as_adds)
    {
      left_props = copyfrom_props ? copyfrom_props
                                  : FUNC1(scratch_pool);
    }
  else
    {
      left_props = FUNC1(scratch_pool);
      copyfrom_source = NULL;
    }

  FUNC0(FUNC4(&prop_changes, right_props, left_props,
                         scratch_pool));

  return FUNC3(FUNC2(relpath,
                                            copyfrom_source ? copyfrom_source->revision
                                                            : DIFF_REVNUM_NONEXISTENT,
                                            right_source->revision,
                                            prop_changes,
                                            left_props, right_props,
                                            TRUE /* show_diff_header */,
                                            dwi,
                                            scratch_pool));
}
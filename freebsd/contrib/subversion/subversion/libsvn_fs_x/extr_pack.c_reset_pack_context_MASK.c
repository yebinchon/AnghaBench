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
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_3__ {int /*<<< orphan*/  info_pool; int /*<<< orphan*/  paths; int /*<<< orphan*/  reps_file; int /*<<< orphan*/  reps; int /*<<< orphan*/  references; int /*<<< orphan*/  path_order; int /*<<< orphan*/  rev_offsets; int /*<<< orphan*/  dir_props_file; int /*<<< orphan*/  dir_props; int /*<<< orphan*/  file_props_file; int /*<<< orphan*/  file_props; int /*<<< orphan*/  changes_file; int /*<<< orphan*/  changes; } ;
typedef  TYPE_1__ pack_context_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC5(pack_context_t *context,
                   apr_pool_t *scratch_pool)
{
  FUNC1(context->changes);
  FUNC0(FUNC2(context->changes_file, 0, scratch_pool));
  FUNC1(context->file_props);
  FUNC0(FUNC2(context->file_props_file, 0, scratch_pool));
  FUNC1(context->dir_props);
  FUNC0(FUNC2(context->dir_props_file, 0, scratch_pool));

  FUNC1(context->rev_offsets);
  FUNC1(context->path_order);
  FUNC1(context->references);
  FUNC1(context->reps);
  FUNC0(FUNC2(context->reps_file, 0, scratch_pool));

  FUNC3(context->info_pool);
  context->paths = FUNC4(context->info_pool);

  return SVN_NO_ERROR;
}
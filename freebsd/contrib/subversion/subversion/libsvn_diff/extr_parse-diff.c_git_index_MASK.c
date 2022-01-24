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
struct TYPE_3__ {scalar_t__ new_executable_bit; scalar_t__ new_symlink_bit; scalar_t__ operation; scalar_t__ old_executable_bit; scalar_t__ old_symlink_bit; } ;
typedef  TYPE_1__ svn_patch_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  enum parse_state { ____Placeholder_parse_state } parse_state ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,scalar_t__*,char*) ; 
 char* FUNC3 (char*,char) ; 
 scalar_t__ svn_diff_op_added ; 
 scalar_t__ svn_diff_op_deleted ; 
 scalar_t__ svn_tristate_unknown ; 

__attribute__((used)) static svn_error_t *
FUNC4(enum parse_state *new_state, char *line, svn_patch_t *patch,
          apr_pool_t *result_pool, apr_pool_t *scratch_pool)
{
  /* We either have something like "index 33e5b38..0000000" (which we just
     ignore as we are not interested in git specific shas) or something like
     "index 33e5b38..0000000 120000" which tells us the mode, that isn't
     changed by applying this patch.

     If the mode would have changed then we would see 'old mode' and 'new mode'
     lines.
  */
  line = FUNC3(line + FUNC0("index "), ' ');

  if (line && patch->new_executable_bit == svn_tristate_unknown
           && patch->new_symlink_bit == svn_tristate_unknown
           && patch->operation != svn_diff_op_added
           && patch->operation != svn_diff_op_deleted)
    {
      FUNC1(FUNC2(&patch->new_executable_bit,
                                  &patch->new_symlink_bit,
                                  line + 1));

      /* There is no change.. so set the old values to the new values */
      patch->old_executable_bit = patch->new_executable_bit;
      patch->old_symlink_bit = patch->new_symlink_bit;
    }

  /* This function doesn't change the state! */
  /* *new_state = *new_state */
  return SVN_NO_ERROR;
}
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
struct TYPE_3__ {char const* old_filename; char const* new_filename; scalar_t__ operation; } ;
typedef  TYPE_1__ svn_patch_t ;
typedef  scalar_t__ apr_size_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,char*) ; 
 scalar_t__ FUNC1 (char const*) ; 
 scalar_t__ svn_diff_op_moved ; 
 char const* FUNC2 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char const*) ; 

__attribute__((used)) static const char *
FUNC4(const svn_patch_t *patch)
{
  apr_size_t old;
  apr_size_t new;

  if (FUNC0(patch->old_filename, "/dev/null") == 0)
    return patch->new_filename;
  if (FUNC0(patch->new_filename, "/dev/null") == 0)
    return patch->old_filename;

  /* If the patch renames the target, use the old name while
   * applying hunks. The target will be renamed to the new name
   * after hunks have been applied. */
  if (patch->operation == svn_diff_op_moved)
    return patch->old_filename;

  old = FUNC3(patch->old_filename);
  new = FUNC3(patch->new_filename);

  if (old == new)
    {
      old = FUNC1(FUNC2(patch->old_filename, NULL));
      new = FUNC1(FUNC2(patch->new_filename, NULL));

      if (old == new)
        {
          old = FUNC1(patch->old_filename);
          new = FUNC1(patch->new_filename);
        }
    }

  return (old < new) ? patch->old_filename : patch->new_filename;
}
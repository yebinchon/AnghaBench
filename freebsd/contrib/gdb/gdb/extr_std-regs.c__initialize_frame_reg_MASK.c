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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  builtin_type_frame_reg ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  value_of_builtin_frame_fp_reg ; 
 int /*<<< orphan*/  value_of_builtin_frame_pc_reg ; 
 int /*<<< orphan*/  value_of_builtin_frame_ps_reg ; 
 int /*<<< orphan*/  value_of_builtin_frame_reg ; 
 int /*<<< orphan*/  value_of_builtin_frame_sp_reg ; 

void
FUNC2 (void)
{
  /* FIXME: cagney/2002-02-08: At present the local builtin types
     can't be initialized using _initialize*() or gdbarch.  Due mainly
     to non-multi-arch targets, GDB initializes things piece meal and,
     as a consequence can leave these types NULL.  */
  FUNC0 (builtin_type_frame_reg);

  /* Frame based $fp, $pc, $sp and $ps.  These only come into play
     when the target does not define its own version of these
     registers.  */
  FUNC1 ("fp", value_of_builtin_frame_fp_reg);
  FUNC1 ("pc", value_of_builtin_frame_pc_reg);
  FUNC1 ("sp", value_of_builtin_frame_sp_reg);
  FUNC1 ("ps", value_of_builtin_frame_ps_reg);

  /* NOTE: cagney/2002-04-05: For moment leave the $frame / $gdbframe
     / $gdb.frame disabled.  It isn't yet clear which of the many
     options is the best.  */
  if (0)
    FUNC1 ("frame", value_of_builtin_frame_reg);
}
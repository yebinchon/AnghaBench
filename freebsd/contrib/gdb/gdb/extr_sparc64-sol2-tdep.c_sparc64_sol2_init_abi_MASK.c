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
struct gdbarch_tdep {int plt_entry_size; } ;
struct gdbarch_info {int dummy; } ;
struct gdbarch {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  find_solib_trampoline_target ; 
 int /*<<< orphan*/  FUNC0 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 struct gdbarch_tdep* FUNC1 (struct gdbarch*) ; 
 int /*<<< orphan*/  in_plt_section ; 
 int /*<<< orphan*/  FUNC2 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct gdbarch*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct gdbarch_info,struct gdbarch*) ; 
 int /*<<< orphan*/  sparc64_sol2_sigtramp_frame_sniffer ; 
 int /*<<< orphan*/  sparc_sol2_pc_in_sigtramp ; 

void
FUNC7 (struct gdbarch_info info, struct gdbarch *gdbarch)
{
  struct gdbarch_tdep *tdep = FUNC1 (gdbarch);

  FUNC3 (gdbarch, sparc_sol2_pc_in_sigtramp);
  FUNC0 (gdbarch, sparc64_sol2_sigtramp_frame_sniffer);

  FUNC6 (info, gdbarch);

  /* Solaris has SVR4-style shared libraries...  */
  FUNC2 (gdbarch, in_plt_section);
  FUNC4 (gdbarch, find_solib_trampoline_target);

  /* ...which means that we need some special handling when doing
     prologue analysis.  */
  tdep->plt_entry_size = 16;

  /* Solaris has kernel-assisted single-stepping support.  */
  FUNC5 (gdbarch, NULL);
}
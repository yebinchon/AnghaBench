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
struct gdbarch_tdep {int dummy; } ;
struct gdbarch_info {int dummy; } ;
struct gdbarch {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  floatformat_ieee_double_big ; 
 int /*<<< orphan*/  FUNC0 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 struct gdbarch_tdep* FUNC1 (struct gdbarch*) ; 
 int /*<<< orphan*/  nbsd_ilp32_solib_svr4_fetch_link_map_offsets ; 
 int /*<<< orphan*/  FUNC2 (struct gdbarch*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct gdbarch*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sparc32obsd_pc_in_sigtramp ; 
 int /*<<< orphan*/  sparc32obsd_sigtramp_frame_sniffer ; 

__attribute__((used)) static void
FUNC6 (struct gdbarch_info info, struct gdbarch *gdbarch)
{
  struct gdbarch_tdep *tdep = FUNC1 (gdbarch);

  /* OpenBSD doesn't support the 128-bit `long double' from the psABI.  */
  FUNC2 (gdbarch, 64);
  FUNC3 (gdbarch, &floatformat_ieee_double_big);

  FUNC4 (gdbarch, sparc32obsd_pc_in_sigtramp);
  FUNC0 (gdbarch, sparc32obsd_sigtramp_frame_sniffer);

  FUNC5
    (gdbarch, nbsd_ilp32_solib_svr4_fetch_link_map_offsets);
}
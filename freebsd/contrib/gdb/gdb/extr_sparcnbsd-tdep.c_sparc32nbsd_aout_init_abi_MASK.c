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
struct gdbarch_info {int dummy; } ;
struct gdbarch {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gdbarch_info,struct gdbarch*) ; 
 int /*<<< orphan*/  sparcnbsd_aout_in_solib_call_trampoline ; 

__attribute__((used)) static void
FUNC2 (struct gdbarch_info info, struct gdbarch *gdbarch)
{
  FUNC1 (info, gdbarch);

  FUNC0
    (gdbarch, sparcnbsd_aout_in_solib_call_trampoline);
}
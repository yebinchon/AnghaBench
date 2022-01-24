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
struct regset {int dummy; } ;
struct gdbarch_tdep {size_t sizeof_gregset; size_t sizeof_fpregset; struct regset const* fpregset; struct regset const* gregset; } ;
struct gdbarch {int dummy; } ;

/* Variables and functions */
 struct gdbarch_tdep* FUNC0 (struct gdbarch*) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 

const struct regset *
FUNC2 (struct gdbarch *gdbarch,
				const char *sect_name, size_t sect_size)
{
  struct gdbarch_tdep *tdep = FUNC0 (gdbarch);

  if (FUNC1 (sect_name, ".reg") == 0 && sect_size >= tdep->sizeof_gregset)
    return tdep->gregset;

  if (FUNC1 (sect_name, ".reg2") == 0 && sect_size >= tdep->sizeof_fpregset)
    return tdep->fpregset;

  return NULL;
}
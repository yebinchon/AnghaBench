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
struct regcache_descr {int nr_cooked_registers; int* register_offset; } ;
struct gdbarch {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct regcache_descr* FUNC1 (struct gdbarch*) ; 

int
FUNC2 (struct gdbarch *gdbarch, int regnum)
{
  struct regcache_descr *descr = FUNC1 (gdbarch);
  FUNC0 (regnum >= 0 && regnum < descr->nr_cooked_registers);
  return descr->register_offset[regnum];
}
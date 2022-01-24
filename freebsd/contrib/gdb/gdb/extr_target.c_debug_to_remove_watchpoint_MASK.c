#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int (* to_insert_watchpoint ) (scalar_t__,int,int) ;} ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 TYPE_1__ debug_target ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned long,int,int,unsigned long) ; 
 int /*<<< orphan*/  gdb_stdlog ; 
 int FUNC1 (scalar_t__,int,int) ; 

__attribute__((used)) static int
FUNC2 (CORE_ADDR addr, int len, int type)
{
  int retval;

  retval = debug_target.to_insert_watchpoint (addr, len, type);

  FUNC0 (gdb_stdlog,
		      "target_insert_watchpoint (0x%lx, %d, %d) = %ld\n",
		      (unsigned long) addr, len, type, (unsigned long) retval);
  return retval;
}
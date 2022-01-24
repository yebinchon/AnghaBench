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
struct watch_area {int lo_addr; int hi_addr; struct watch_area* next; } ;
typedef  int CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  gdb_stderr ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct watch_area* watch_base ; 
 int /*<<< orphan*/  FUNC2 (struct watch_area*) ; 

int
FUNC3 (CORE_ADDR addr, int len)
{
  struct watch_area *area, **parea;

  for (parea = &watch_base; *parea; parea = &(*parea)->next)
    if ((*parea)->lo_addr == addr
	&& (*parea)->hi_addr == addr + len - 1)
      break;

  if (!*parea)
    {
      FUNC0 (gdb_stderr,
			  "Attempt to remove nonexistent watchpoint.\n");
      return -1;
    }

  area = *parea;
  *parea = area->next;
  FUNC2 (area);

  FUNC1 ();
  return 0;
}
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
struct watch_area {struct watch_area* next; void* hi_addr; void* lo_addr; } ;
typedef  void* CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct watch_area* watch_base ; 
 struct watch_area* FUNC1 (int) ; 

int
FUNC2 (CORE_ADDR addr, int len)
{
  struct watch_area *area = FUNC1 (sizeof (struct watch_area));
  if (!area)
    return -1; 

  area->lo_addr = addr;
  area->hi_addr = addr + len - 1;
 
  area->next = watch_base;
  watch_base = area;

  FUNC0 ();
  return 0;
}
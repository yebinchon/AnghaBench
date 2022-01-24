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
struct TYPE_2__ {scalar_t__ text_addr; scalar_t__ text_end; scalar_t__ got_value; } ;
struct so_list {struct so_list* next; TYPE_1__ som_solib; } ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 struct so_list* so_list_head ; 

CORE_ADDR
FUNC0 (CORE_ADDR addr)
{
  struct so_list *so_list = so_list_head;
  CORE_ADDR got_value = 0;

  while (so_list)
    {
      if (so_list->som_solib.text_addr <= addr
	  && so_list->som_solib.text_end > addr)
	{
	  got_value = so_list->som_solib.got_value;
	  break;
	}
      so_list = so_list->next;
    }
  return got_value;
}
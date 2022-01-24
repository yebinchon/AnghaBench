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
struct TYPE_2__ {int struct_version; int bind_mode; unsigned int library_version; unsigned int text_addr; unsigned int text_end; unsigned int data_start; unsigned int data_end; unsigned int got_value; int /*<<< orphan*/  name; } ;
struct so_list {struct so_list* next; TYPE_1__ som_solib; int /*<<< orphan*/ * objfile; } ;

/* Variables and functions */
 int /*<<< orphan*/ * exec_bfd ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 struct so_list* so_list_head ; 

__attribute__((used)) static void
FUNC2 (char *ignore, int from_tty)
{
  struct so_list *so_list = so_list_head;

  if (exec_bfd == NULL)
    {
      FUNC1 ("No executable file.\n");
      return;
    }

  if (so_list == NULL)
    {
      FUNC1 ("No shared libraries loaded at this time.\n");
      return;
    }

  FUNC1 ("Shared Object Libraries\n");
  FUNC1 ("    %-12s%-12s%-12s%-12s%-12s%-12s\n",
	 "  flags", "  tstart", "   tend", "  dstart", "   dend", "   dlt");
  while (so_list)
    {
      unsigned int flags;

      flags = so_list->som_solib.struct_version << 24;
      flags |= so_list->som_solib.bind_mode << 16;
      flags |= so_list->som_solib.library_version;
      FUNC1 ("%s", so_list->som_solib.name);
      if (so_list->objfile == NULL)
	FUNC1 ("  (symbols not loaded)");
      FUNC1 ("\n");
      FUNC1 ("    %-12s", FUNC0 (flags, "08l"));
      FUNC1 ("%-12s",
	     FUNC0 (so_list->som_solib.text_addr, "08l"));
      FUNC1 ("%-12s",
	      FUNC0 (so_list->som_solib.text_end, "08l"));
      FUNC1 ("%-12s",
	    FUNC0 (so_list->som_solib.data_start, "08l"));
      FUNC1 ("%-12s",
	      FUNC0 (so_list->som_solib.data_end, "08l"));
      FUNC1 ("%-12s\n",
	     FUNC0 (so_list->som_solib.got_value, "08l"));
      so_list = so_list->next;
    }
}
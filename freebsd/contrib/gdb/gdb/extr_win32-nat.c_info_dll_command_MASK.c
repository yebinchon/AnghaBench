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
struct so_stuff {int /*<<< orphan*/  load_addr; int /*<<< orphan*/  name; struct so_stuff* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  max_dll_name_len ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*,...) ; 
 struct so_stuff solib_start ; 

void
FUNC1 (char *ignore, int from_tty)
{
  struct so_stuff *so = &solib_start;

  if (!so->next)
    return;

  FUNC0 ("%*s  Load Address\n", -max_dll_name_len, "DLL Name");
  while ((so = so->next) != NULL)
    FUNC0 ("%*s  %08lx\n", -max_dll_name_len, so->name, so->load_addr);

  return;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct so_stuff {scalar_t__ load_addr; scalar_t__ objfile; struct so_stuff* next; } ;
struct TYPE_4__ {scalar_t__ lpBaseOfDll; } ;
struct TYPE_5__ {TYPE_1__ UnloadDll; } ;
struct TYPE_6__ {TYPE_2__ u; } ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 TYPE_3__ current_event ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct so_stuff* solib_end ; 
 struct so_stuff solib_start ; 
 int /*<<< orphan*/  FUNC2 (struct so_stuff*) ; 

__attribute__((used)) static int
FUNC3 (void *dummy)
{
  DWORD lpBaseOfDll = (DWORD) current_event.u.UnloadDll.lpBaseOfDll + 0x1000;
  struct so_stuff *so;

  for (so = &solib_start; so->next != NULL; so = so->next)
    if (so->next->load_addr == lpBaseOfDll)
      {
	struct so_stuff *sodel = so->next;
	so->next = sodel->next;
	if (!so->next)
	  solib_end = so;
	if (sodel->objfile)
	  FUNC1 (sodel->objfile);
	FUNC2(sodel);
	return 1;
      }
  FUNC0 ("Error: dll starting at 0x%lx not found.\n", (DWORD) lpBaseOfDll);

  return 0;
}
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
struct local_bp_list_entry {scalar_t__ addr; struct local_bp_list_entry* next; int /*<<< orphan*/  point; } ;
typedef  int /*<<< orphan*/  PointHandle ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 int RDIError_NoError ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct local_bp_list_entry* local_bp_list ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct local_bp_list_entry*) ; 

__attribute__((used)) static int
FUNC4 (CORE_ADDR addr, char *contents_cache)
{
  int rslt;
  PointHandle point;
  struct local_bp_list_entry **entryp, *dead;

  for (entryp = &local_bp_list; *entryp != NULL; entryp = &(*entryp)->next)
    if ((*entryp)->addr == addr)
      break;

  if (*entryp)
    {
      dead = *entryp;
      rslt = FUNC0 (dead->point);
      if (rslt != RDIError_NoError)
	FUNC1 ("RDI_clearbreak: %s\n", FUNC2 (rslt));

      /* Delete the breakpoint entry locally.  */
      *entryp = dead->next;
      FUNC3 (dead);
    }

  return 0;
}
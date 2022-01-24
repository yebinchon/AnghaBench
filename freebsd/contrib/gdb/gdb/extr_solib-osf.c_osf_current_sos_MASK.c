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
struct so_list {struct so_list* next; TYPE_1__* lm_info; } ;
struct read_map_ctxt {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  isloader; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct read_map_ctxt*) ; 
 int /*<<< orphan*/  FUNC1 (struct so_list*,struct so_list*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct read_map_ctxt*) ; 
 int /*<<< orphan*/  FUNC3 (struct so_list*) ; 
 int /*<<< orphan*/  FUNC4 (struct read_map_ctxt*,struct so_list*) ; 
 struct so_list* FUNC5 (int) ; 

__attribute__((used)) static struct so_list *
FUNC6 (void)
{
  struct so_list *head = NULL, *tail, *newtail, so;
  struct read_map_ctxt ctxt;
  int skipped_main;

  if (!FUNC2 (&ctxt))
    return NULL;

  /* Read subsequent elements.  */
  for (skipped_main = 0;;)
    {
      if (!FUNC4 (&ctxt, &so))
	break;

      /* Skip the main program module, which is first in the list after
         /sbin/loader.  */
      if (!so.lm_info->isloader && !skipped_main)
	{
	  FUNC3 (&so);
	  skipped_main = 1;
	  continue;
	}

      newtail = FUNC5 (sizeof *newtail);
      if (!head)
	head = newtail;
      else
	tail->next = newtail;
      tail = newtail;

      FUNC1 (tail, &so, sizeof so);
      tail->next = NULL;
    }

 done:
  FUNC0 (&ctxt);
  return head;
}
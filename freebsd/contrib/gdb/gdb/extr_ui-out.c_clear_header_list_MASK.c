#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {TYPE_2__* header_next; int /*<<< orphan*/ * header_last; TYPE_2__* header_first; } ;
struct ui_out {TYPE_1__ table; } ;
struct TYPE_4__ {struct TYPE_4__* colhdr; struct TYPE_4__* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC2 (struct ui_out *uiout)
{
  while (uiout->table.header_first != NULL)
    {
      uiout->table.header_next = uiout->table.header_first;
      uiout->table.header_first = uiout->table.header_first->next;
      if (uiout->table.header_next->colhdr != NULL)
	FUNC1 (uiout->table.header_next->colhdr);
      FUNC1 (uiout->table.header_next);
    }
  FUNC0 (uiout->table.header_first == NULL);
  uiout->table.header_last = NULL;
  uiout->table.header_next = NULL;
}
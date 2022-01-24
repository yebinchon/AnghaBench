#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * obj; struct TYPE_3__* next; } ;
typedef  int /*<<< orphan*/  Objlist ;
typedef  TYPE_1__ Needed_Entry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC1(Needed_Entry *needed, Objlist *list)
{
    /* Recursively process the successor needed objects. */
    if (needed->next != NULL)
	FUNC1(needed->next, list);

    /* Process the current needed object. */
    if (needed->obj != NULL)
	FUNC0(needed->obj, needed->obj, list);
}
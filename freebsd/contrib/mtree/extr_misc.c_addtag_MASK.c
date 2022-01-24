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
struct TYPE_3__ {int count; char** list; } ;
typedef  TYPE_1__ slist_t ;

/* Variables and functions */
 int TAG_CHUNK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char**,int) ; 

void
FUNC2(slist_t *list, char *elem)
{

#define	TAG_CHUNK 20

	if ((list->count % TAG_CHUNK) == 0) {
		char **new;

		new = (char **)FUNC1(list->list, (list->count + TAG_CHUNK)
		    * sizeof(char *));
		if (new == NULL)
			FUNC0("memory allocation error");
		list->list = new;
	}
	list->list[list->count] = elem;
	list->count++;
}
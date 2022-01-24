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
struct config_strlist {char* str; struct config_strlist* next; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

int 
FUNC2(struct config_strlist** head, char* item)
{
	struct config_strlist *s;
	if(!item || !head) {
		FUNC1(item);
		return 0;
	}
	s = (struct config_strlist*)FUNC0(1, sizeof(struct config_strlist));
	if(!s) {
		FUNC1(item);
		return 0;
	}
	s->str = item;
	s->next = *head;
	*head = s;
	return 1;
}
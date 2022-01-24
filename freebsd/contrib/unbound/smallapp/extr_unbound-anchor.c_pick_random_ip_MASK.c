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
typedef  int /*<<< orphan*/  uint32_t ;
struct ip_list {struct ip_list* next; scalar_t__ used; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ip_list*) ; 

__attribute__((used)) static struct ip_list*
FUNC2(struct ip_list* list)
{
	struct ip_list* p = list;
	int num = FUNC1(list);
	int sel;
	if(num == 0) return NULL;
	/* not perfect, but random enough */
	sel = (int)FUNC0((uint32_t)num);
	/* skip over unused elements that we did not select */
	while(sel > 0 && p) {
		if(!p->used) sel--;
		p = p->next;
	}
	/* find the next unused element */
	while(p && p->used)
		p = p->next;
	if(!p) return NULL; /* robustness */
	return p;
}
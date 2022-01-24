#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct TYPE_6__* last; struct TYPE_6__* next; TYPE_2__* fnode; void* in_progress; void* head; } ;
typedef  TYPE_1__ provnode ;
struct TYPE_7__ {TYPE_3__* prov_list; } ;
typedef  TYPE_2__ filenode ;
struct TYPE_8__ {struct TYPE_8__* next; TYPE_1__* pnode; } ;
typedef  TYPE_3__ f_provnode ;
typedef  int /*<<< orphan*/  Hash_Entry ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 void* RESET ; 
 void* SET ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  provide_hash ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Hash_Entry *
FUNC4(filenode *node)
{
	Hash_Entry *entry;
	f_provnode *f_pnode;
	provnode *head, *pnode;
	static	int i = 0;
	int	new;
	char buffer[30];

	do {
		FUNC3(buffer, sizeof buffer, "fake_prov_%08d", i++);
		entry = FUNC0(provide_hash, buffer, &new);
	} while (new == 0);
	head = FUNC2(sizeof(*head));
	head->head = SET;
	head->in_progress = RESET;
	head->fnode = NULL;
	head->last = head->next = NULL;
	FUNC1(entry, head);

	pnode = FUNC2(sizeof(*pnode));
	pnode->head = RESET;
	pnode->in_progress = RESET;
	pnode->fnode = node;
	pnode->next = head->next;
	pnode->last = head;
	head->next = pnode;
	if (pnode->next != NULL)
		pnode->next->last = pnode;

	f_pnode = FUNC2(sizeof(*f_pnode));
	f_pnode->pnode = pnode;
	f_pnode->next = node->prov_list;
	node->prov_list = f_pnode;

	return (entry);
}
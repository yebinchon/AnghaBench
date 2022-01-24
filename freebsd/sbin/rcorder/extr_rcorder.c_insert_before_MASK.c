#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  s; TYPE_5__* node; struct TYPE_11__* next; } ;
typedef  TYPE_2__ strnodelist ;
struct TYPE_12__ {TYPE_1__* fnode; scalar_t__ head; struct TYPE_12__* next; } ;
typedef  TYPE_3__ provnode ;
struct TYPE_13__ {struct TYPE_13__* next; int /*<<< orphan*/ * entry; } ;
typedef  TYPE_4__ f_reqnode ;
struct TYPE_14__ {int /*<<< orphan*/  filename; } ;
struct TYPE_10__ {TYPE_4__* req_list; } ;
typedef  int /*<<< orphan*/  Hash_Entry ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_2__* bl_list ; 
 TYPE_4__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  provide_hash ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(void)
{
	Hash_Entry *entry, *fake_prov_entry;
	provnode *pnode;
	f_reqnode *rnode;
	strnodelist *bl;
	int new;
	
	while (bl_list != NULL) {
		bl = bl_list->next;

		fake_prov_entry = FUNC4(bl_list->node);

		entry = FUNC0(provide_hash, bl_list->s, &new);
		if (new == 1)
			FUNC5("file `%s' is before unknown provision `%s'", bl_list->node->filename, bl_list->s);

		for (pnode = FUNC1(entry); pnode; pnode = pnode->next) {
			if (pnode->head)
				continue;

			rnode = FUNC2(sizeof(*rnode));
			rnode->entry = fake_prov_entry;
			rnode->next = pnode->fnode->req_list;
			pnode->fnode->req_list = rnode;
		}

		FUNC3(bl_list);
		bl_list = bl;
	}
}
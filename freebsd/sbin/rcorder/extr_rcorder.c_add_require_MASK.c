#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_2__* req_list; } ;
typedef  TYPE_1__ filenode ;
struct TYPE_6__ {struct TYPE_6__* next; int /*<<< orphan*/ * entry; } ;
typedef  TYPE_2__ f_reqnode ;
typedef  int /*<<< orphan*/  Hash_Entry ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC2 (int) ; 
 int /*<<< orphan*/  provide_hash ; 

__attribute__((used)) static void
FUNC3(filenode *fnode, char *s)
{
	Hash_Entry *entry;
	f_reqnode *rnode;
	int new;

	entry = FUNC0(provide_hash, s, &new);
	if (new)
		FUNC1(entry, NULL);
	rnode = FUNC2(sizeof(*rnode));
	rnode->entry = entry;
	rnode->next = fnode->req_list;
	fnode->req_list = rnode;
}
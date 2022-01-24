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
struct TYPE_7__ {scalar_t__ in_progress; TYPE_1__* next; } ;
typedef  TYPE_2__ provnode ;
struct TYPE_8__ {int /*<<< orphan*/ * entry; } ;
typedef  TYPE_3__ f_reqnode ;
struct TYPE_6__ {int /*<<< orphan*/  fnode; } ;
typedef  int /*<<< orphan*/  Hash_Entry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ SET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int exit_code ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC4(f_reqnode *rnode, char *filename)
{
	Hash_Entry *entry;
	provnode *head;

	entry = rnode->entry;
	head = FUNC1(entry);

	if (head == NULL) {
		FUNC3("requirement `%s' in file `%s' has no providers.",
		    FUNC0(entry), filename);
		exit_code = 1;
		return;
	}

	/* return if the requirement is already satisfied. */
	if (head->next == NULL)
		return;

	/* 
	 * if list is marked as in progress,
	 *	print that there is a circular dependency on it and abort
	 */
	if (head->in_progress == SET) {
		FUNC3("Circular dependency on provision `%s' in file `%s'.",
		    FUNC0(entry), filename);
		exit_code = 1;
		return;
	}

	head->in_progress = SET;
	
	/*
	 * while provision_list is not empty
	 *	do_file(first_member_of(provision_list));
	 */
	while (head->next != NULL)
		FUNC2(head->next->fnode);
}
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
struct fatEntry {int dummy; } ;
struct dosDirEntry {int dummy; } ;
struct dirTodoNode {struct dirTodoNode* next; struct dosDirEntry* dir; } ;
struct bootblock {int dummy; } ;

/* Variables and functions */
 int FSFATAL ; 
 int /*<<< orphan*/  FUNC0 (struct dirTodoNode*) ; 
 struct dirTodoNode* pendingDirectories ; 
 int FUNC1 (int,struct bootblock*,struct fatEntry*,struct dosDirEntry*) ; 
 struct dosDirEntry* rootDir ; 

int
FUNC2(int dosfs, struct bootblock *boot, struct fatEntry *fat)
{
	int mod;

	mod = FUNC1(dosfs, boot, fat, rootDir);
	if (mod & FSFATAL)
		return FSFATAL;

	/*
	 * process the directory todo list
	 */
	while (pendingDirectories) {
		struct dosDirEntry *dir = pendingDirectories->dir;
		struct dirTodoNode *n = pendingDirectories->next;

		/*
		 * remove TODO entry now, the list might change during
		 * directory reads
		 */
		FUNC0(pendingDirectories);
		pendingDirectories = n;

		/*
		 * handle subdirectory
		 */
		mod |= FUNC1(dosfs, boot, fat, dir);
		if (mod & FSFATAL)
			return FSFATAL;
	}

	return mod;
}
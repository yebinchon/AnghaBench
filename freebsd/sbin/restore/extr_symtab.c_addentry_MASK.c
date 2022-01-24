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
struct entry {int e_type; char* e_name; struct entry* e_links; scalar_t__ e_ino; struct entry* e_entries; struct entry* e_sibling; struct entry* e_parent; void* e_namlen; struct entry* e_next; } ;
typedef  scalar_t__ ino_t ;

/* Variables and functions */
 int LINK ; 
 scalar_t__ UFS_ROOTINO ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct entry*) ; 
 scalar_t__ FUNC1 (int,int) ; 
 struct entry* freelist ; 
 struct entry* FUNC2 (scalar_t__) ; 
 struct entry* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct entry*,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 void* FUNC6 (char*) ; 
 void* FUNC7 (char*) ; 
 char* FUNC8 (char*,char) ; 

struct entry *
FUNC9(char *name, ino_t inum, int type)
{
	struct entry *np, *ep;

	if (freelist != NULL) {
		np = freelist;
		freelist = np->e_next;
		FUNC4(np, 0, (long)sizeof(struct entry));
	} else {
		np = (struct entry *)FUNC1(1, sizeof(struct entry));
		if (np == NULL)
			FUNC5("no memory to extend symbol table\n");
	}
	np->e_type = type & ~LINK;
	ep = FUNC3(name);
	if (ep == NULL) {
		if (inum != UFS_ROOTINO || FUNC2(UFS_ROOTINO) != NULL)
			FUNC5("bad name to addentry %s\n", name);
		np->e_name = FUNC6(name);
		np->e_namlen = FUNC7(name);
		np->e_parent = np;
		FUNC0(UFS_ROOTINO, np);
		return (np);
	}
	np->e_name = FUNC6(FUNC8(name, '/') + 1);
	np->e_namlen = FUNC7(np->e_name);
	np->e_parent = ep;
	np->e_sibling = ep->e_entries;
	ep->e_entries = np;
	if (type & LINK) {
		ep = FUNC2(inum);
		if (ep == NULL)
			FUNC5("link to non-existent name\n");
		np->e_ino = inum;
		np->e_links = ep->e_links;
		ep->e_links = np;
	} else if (inum != 0) {
		if (FUNC2(inum) != NULL)
			FUNC5("duplicate entry\n");
		FUNC0(inum, np);
	}
	return (np);
}
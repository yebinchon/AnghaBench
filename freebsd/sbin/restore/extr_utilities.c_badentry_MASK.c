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
typedef  char* u_long ;
struct entry {scalar_t__ e_type; scalar_t__ e_ino; struct entry* e_next; struct entry* e_links; struct entry* e_entries; struct entry* e_sibling; struct entry* e_parent; } ;

/* Variables and functions */
 scalar_t__ NODE ; 
 int /*<<< orphan*/  FUNC0 (struct entry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 char* FUNC2 (struct entry*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC4(struct entry *ep, char *msg)
{

	FUNC1(stderr, "bad entry: %s\n", msg);
	FUNC1(stderr, "name: %s\n", FUNC2(ep));
	FUNC1(stderr, "parent name %s\n", FUNC2(ep->e_parent));
	if (ep->e_sibling != NULL)
		FUNC1(stderr, "sibling name: %s\n", FUNC2(ep->e_sibling));
	if (ep->e_entries != NULL)
		FUNC1(stderr, "next entry name: %s\n", FUNC2(ep->e_entries));
	if (ep->e_links != NULL)
		FUNC1(stderr, "next link name: %s\n", FUNC2(ep->e_links));
	if (ep->e_next != NULL)
		FUNC1(stderr,
		    "next hashchain name: %s\n", FUNC2(ep->e_next));
	FUNC1(stderr, "entry type: %s\n",
		ep->e_type == NODE ? "NODE" : "LEAF");
	FUNC1(stderr, "inode number: %s\n", (u_long)ep->e_ino);
	FUNC3("flags: %s\n", FUNC0(ep));
}
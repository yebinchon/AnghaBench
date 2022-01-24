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
struct entry {scalar_t__ e_flags; scalar_t__ e_type; scalar_t__ e_ino; struct entry* e_next; int /*<<< orphan*/  e_name; struct entry* e_links; int /*<<< orphan*/ * e_entries; } ;
typedef  scalar_t__ ino_t ;

/* Variables and functions */
 scalar_t__ NODE ; 
 scalar_t__ REMOVED ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct entry*,char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 struct entry* freelist ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct entry* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct entry*) ; 

void
FUNC6(struct entry *ep)
{
	struct entry *np;
	ino_t inum;

	if (ep->e_flags != REMOVED)
		FUNC1(ep, "not marked REMOVED");
	if (ep->e_type == NODE) {
		if (ep->e_links != NULL)
			FUNC1(ep, "freeing referenced directory");
		if (ep->e_entries != NULL)
			FUNC1(ep, "freeing non-empty directory");
	}
	if (ep->e_ino != 0) {
		np = FUNC4(ep->e_ino);
		if (np == NULL)
			FUNC1(ep, "lookupino failed");
		if (np == ep) {
			inum = ep->e_ino;
			FUNC2(inum);
			if (ep->e_links != NULL)
				FUNC0(inum, ep->e_links);
		} else {
			for (; np != NULL; np = np->e_links) {
				if (np->e_links == ep) {
					np->e_links = ep->e_links;
					break;
				}
			}
			if (np == NULL)
				FUNC1(ep, "link not found");
		}
	}
	FUNC5(ep);
	FUNC3(ep->e_name);
	ep->e_next = freelist;
	freelist = ep;
}
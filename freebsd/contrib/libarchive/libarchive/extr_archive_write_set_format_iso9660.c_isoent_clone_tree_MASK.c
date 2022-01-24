#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {struct isoent* first; } ;
struct isoent {struct isoent* chnext; struct isoent* parent; TYPE_1__ children; scalar_t__ dir; } ;
struct archive_write {int /*<<< orphan*/  archive; } ;

/* Variables and functions */
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct isoent*,struct isoent*) ; 
 struct isoent* FUNC2 (struct isoent*) ; 

__attribute__((used)) static int
FUNC3(struct archive_write *a, struct isoent **nroot,
    struct isoent *root)
{
	struct isoent *np, *xroot, *newent;

	np = root;
	xroot = NULL;
	do {
		newent = FUNC2(np);
		if (newent == NULL) {
			FUNC0(&a->archive, ENOMEM,
			    "Can't allocate memory");
			return (ARCHIVE_FATAL);
		}
		if (xroot == NULL) {
			*nroot = xroot = newent;
			newent->parent = xroot;
		} else
			FUNC1(xroot, newent);
		if (np->dir && np->children.first != NULL) {
			/* Enter to sub directories. */
			np = np->children.first;
			xroot = newent;
			continue;
		}
		while (np != np->parent) {
			if (np->chnext == NULL) {
				/* Return to the parent directory. */
				np = np->parent;
				xroot = xroot->parent;
			} else {
				np = np->chnext;
				break;
			}
		}
	} while (np != np->parent);

	return (ARCHIVE_OK);
}
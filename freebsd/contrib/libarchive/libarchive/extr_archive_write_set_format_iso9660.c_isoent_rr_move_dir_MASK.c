#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * first; int /*<<< orphan*/ ** last; scalar_t__ cnt; } ;
struct TYPE_6__ {struct isoent* first; struct isoent** last; scalar_t__ cnt; } ;
struct isoent {scalar_t__ dir; TYPE_4__* file; TYPE_3__ subdirs; TYPE_2__ children; struct isoent* parent; struct isoent* chnext; struct isoent* rr_child; struct isoent* rr_parent; } ;
struct TYPE_5__ {int /*<<< orphan*/ * pathtbl; struct isoent* rootent; } ;
struct iso9660 {TYPE_1__ primary; } ;
struct archive_write {int /*<<< orphan*/  archive; struct iso9660* format_data; } ;
struct TYPE_8__ {int /*<<< orphan*/  entry; } ;

/* Variables and functions */
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct isoent*,struct isoent*) ; 
 int /*<<< orphan*/  FUNC4 (struct isoent*,struct isoent*) ; 
 struct isoent* FUNC5 (struct isoent*) ; 
 struct isoent* FUNC6 (struct archive_write*,struct iso9660*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct isoent*) ; 

__attribute__((used)) static int
FUNC8(struct archive_write *a, struct isoent **rr_moved,
    struct isoent *curent, struct isoent **newent)
{
	struct iso9660 *iso9660 = a->format_data;
	struct isoent *rrmoved, *mvent, *np;

	if ((rrmoved = *rr_moved) == NULL) {
		struct isoent *rootent = iso9660->primary.rootent;
		/* There isn't rr_move entry.
		 * Create rr_move entry and insert it into the root entry.
		 */
		rrmoved = FUNC6(a, iso9660, "rr_moved");
		if (rrmoved == NULL) {
			FUNC2(&a->archive, ENOMEM,
			    "Can't allocate memory");
			return (ARCHIVE_FATAL);
		}
		/* Add "rr_moved" entry to the root entry. */
		FUNC3(rootent, rrmoved);
		FUNC1(rootent->file->entry,
		    FUNC0(rootent->file->entry) + 1);
		/* Register "rr_moved" entry to second level pathtable. */
		FUNC7(&(iso9660->primary.pathtbl[1]), rrmoved);
		/* Save rr_moved. */
		*rr_moved = rrmoved;
	}
	/*
	 * Make a clone of curent which is going to be relocated
	 * to rr_moved.
	 */
	mvent = FUNC5(curent);
	if (mvent == NULL) {
		FUNC2(&a->archive, ENOMEM,
		    "Can't allocate memory");
		return (ARCHIVE_FATAL);
	}
	/* linking..  and use for creating "CL", "PL" and "RE" */
	mvent->rr_parent = curent->parent;
	curent->rr_child = mvent;
	/*
	 * Move subdirectories from the curent to mvent
	 */
	if (curent->children.first != NULL) {
		*mvent->children.last = curent->children.first;
		mvent->children.last = curent->children.last;
	}
	for (np = mvent->children.first; np != NULL; np = np->chnext)
		np->parent = mvent;
	mvent->children.cnt = curent->children.cnt;
	curent->children.cnt = 0;
	curent->children.first = NULL;
	curent->children.last = &curent->children.first;

	if (curent->subdirs.first != NULL) {
		*mvent->subdirs.last = curent->subdirs.first;
		mvent->subdirs.last = curent->subdirs.last;
	}
	mvent->subdirs.cnt = curent->subdirs.cnt;
	curent->subdirs.cnt = 0;
	curent->subdirs.first = NULL;
	curent->subdirs.last = &curent->subdirs.first;

	/*
	 * The mvent becomes a child of the rr_moved entry.
	 */
	FUNC4(rrmoved, mvent);
	FUNC1(rrmoved->file->entry,
	    FUNC0(rrmoved->file->entry) + 1);
	/*
	 * This entry which relocated to the rr_moved directory
	 * has to set the flag as a file.
	 * See also RRIP 4.1.5.1 Description of the "CL" System Use Entry.
	 */
	curent->dir = 0;

	*newent = mvent;

	return (ARCHIVE_OK);
}
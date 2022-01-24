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
struct links_entry {scalar_t__ dev; scalar_t__ ino; scalar_t__ links; struct links_entry* name; struct links_entry* previous; struct links_entry* next; } ;
struct cpio {struct links_entry* links_head; } ;
struct archive_read {int /*<<< orphan*/  archive; } ;
struct archive_entry {int dummy; } ;
typedef  scalar_t__ int64_t ;
typedef  scalar_t__ dev_t ;

/* Variables and functions */
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct archive_entry*,struct links_entry*) ; 
 scalar_t__ FUNC1 (struct archive_entry*) ; 
 scalar_t__ FUNC2 (struct archive_entry*) ; 
 int FUNC3 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct links_entry*) ; 
 scalar_t__ FUNC7 (int) ; 
 struct links_entry* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct archive_read *a,
    struct cpio *cpio, struct archive_entry *entry)
{
	struct links_entry      *le;
	dev_t dev;
	int64_t ino;

	if (FUNC3(entry) <= 1)
		return (ARCHIVE_OK);

	dev = FUNC1(entry);
	ino = FUNC2(entry);

	/*
	 * First look in the list of multiply-linked files.  If we've
	 * already dumped it, convert this entry to a hard link entry.
	 */
	for (le = cpio->links_head; le; le = le->next) {
		if (le->dev == dev && le->ino == ino) {
			FUNC0(entry, le->name);

			if (--le->links <= 0) {
				if (le->previous != NULL)
					le->previous->next = le->next;
				if (le->next != NULL)
					le->next->previous = le->previous;
				if (cpio->links_head == le)
					cpio->links_head = le->next;
				FUNC6(le->name);
				FUNC6(le);
			}

			return (ARCHIVE_OK);
		}
	}

	le = (struct links_entry *)FUNC7(sizeof(struct links_entry));
	if (le == NULL) {
		FUNC5(&a->archive,
		    ENOMEM, "Out of memory adding file to list");
		return (ARCHIVE_FATAL);
	}
	if (cpio->links_head != NULL)
		cpio->links_head->previous = le;
	le->next = cpio->links_head;
	le->previous = NULL;
	cpio->links_head = le;
	le->dev = dev;
	le->ino = ino;
	le->links = FUNC3(entry) - 1;
	le->name = FUNC8(FUNC4(entry));
	if (le->name == NULL) {
		FUNC5(&a->archive,
		    ENOMEM, "Out of memory adding file to list");
		return (ARCHIVE_FATAL);
	}

	return (ARCHIVE_OK);
}
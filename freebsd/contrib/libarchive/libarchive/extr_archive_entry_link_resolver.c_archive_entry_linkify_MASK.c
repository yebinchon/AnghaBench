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
struct links_entry {struct archive_entry* entry; int /*<<< orphan*/  links; int /*<<< orphan*/  canonical; } ;
struct archive_entry_linkresolver {int strategy; } ;
struct archive_entry {int dummy; } ;

/* Variables and functions */
 scalar_t__ AE_IFBLK ; 
 scalar_t__ AE_IFCHR ; 
 scalar_t__ AE_IFDIR ; 
#define  ARCHIVE_ENTRY_LINKIFY_LIKE_MTREE 131 
#define  ARCHIVE_ENTRY_LINKIFY_LIKE_NEW_CPIO 130 
#define  ARCHIVE_ENTRY_LINKIFY_LIKE_OLD_CPIO 129 
#define  ARCHIVE_ENTRY_LINKIFY_LIKE_TAR 128 
 int /*<<< orphan*/  NEXT_ENTRY_DEFERRED ; 
 int /*<<< orphan*/  FUNC0 (struct archive_entry*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct archive_entry*) ; 
 int FUNC2 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_entry*) ; 
 struct links_entry* FUNC5 (struct archive_entry_linkresolver*,struct archive_entry*) ; 
 struct links_entry* FUNC6 (struct archive_entry_linkresolver*,struct archive_entry*) ; 
 struct links_entry* FUNC7 (struct archive_entry_linkresolver*,int /*<<< orphan*/ ) ; 

void
FUNC8(struct archive_entry_linkresolver *res,
    struct archive_entry **e, struct archive_entry **f)
{
	struct links_entry *le;
	struct archive_entry *t;

	*f = NULL; /* Default: Don't return a second entry. */

	if (*e == NULL) {
		le = FUNC7(res, NEXT_ENTRY_DEFERRED);
		if (le != NULL) {
			*e = le->entry;
			le->entry = NULL;
		}
		return;
	}

	/* If it has only one link, then we're done. */
	if (FUNC2(*e) == 1)
		return;
	/* Directories, devices never have hardlinks. */
	if (FUNC1(*e) == AE_IFDIR
	    || FUNC1(*e) == AE_IFBLK
	    || FUNC1(*e) == AE_IFCHR)
		return;

	switch (res->strategy) {
	case ARCHIVE_ENTRY_LINKIFY_LIKE_TAR:
		le = FUNC5(res, *e);
		if (le != NULL) {
			FUNC4(*e);
			FUNC0(*e,
			    FUNC3(le->canonical));
		} else
			FUNC6(res, *e);
		return;
	case ARCHIVE_ENTRY_LINKIFY_LIKE_MTREE:
		le = FUNC5(res, *e);
		if (le != NULL) {
			FUNC0(*e,
			    FUNC3(le->canonical));
		} else
			FUNC6(res, *e);
		return;
	case ARCHIVE_ENTRY_LINKIFY_LIKE_OLD_CPIO:
		/* This one is trivial. */
		return;
	case ARCHIVE_ENTRY_LINKIFY_LIKE_NEW_CPIO:
		le = FUNC5(res, *e);
		if (le != NULL) {
			/*
			 * Put the new entry in le, return the
			 * old entry from le.
			 */
			t = *e;
			*e = le->entry;
			le->entry = t;
			/* Make the old entry into a hardlink. */
			FUNC4(*e);
			FUNC0(*e,
			    FUNC3(le->canonical));
			/* If we ran out of links, return the
			 * final entry as well. */
			if (le->links == 0) {
				*f = le->entry;
				le->entry = NULL;
			}
		} else {
			/*
			 * If we haven't seen it, tuck it away
			 * for future use.
			 */
			le = FUNC6(res, *e);
			if (le == NULL)
				/* XXX We should return an error code XXX */
				return;
			le->entry = *e;
			*e = NULL;
		}
		return;
	default:
		break;
	}
	return;
}
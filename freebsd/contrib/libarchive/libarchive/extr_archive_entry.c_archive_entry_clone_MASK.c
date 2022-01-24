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
struct archive_entry {struct ae_sparse* sparse_head; struct ae_xattr* xattr_head; int /*<<< orphan*/  acl; int /*<<< orphan*/  encryption; int /*<<< orphan*/  ae_symlink_type; int /*<<< orphan*/  ae_uname; int /*<<< orphan*/  ae_set; int /*<<< orphan*/  ae_symlink; int /*<<< orphan*/  ae_sourcepath; int /*<<< orphan*/  ae_pathname; int /*<<< orphan*/  ae_hardlink; int /*<<< orphan*/  ae_gname; int /*<<< orphan*/  ae_fflags_text; int /*<<< orphan*/  ae_fflags_clear; int /*<<< orphan*/  ae_fflags_set; int /*<<< orphan*/  ae_stat; int /*<<< orphan*/  archive; } ;
struct ae_xattr {struct ae_xattr* next; int /*<<< orphan*/  size; int /*<<< orphan*/  value; int /*<<< orphan*/  name; } ;
struct ae_sparse {struct ae_sparse* next; int /*<<< orphan*/  length; int /*<<< orphan*/  offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*,void const*,size_t) ; 
 void* FUNC2 (struct archive_entry*,size_t*) ; 
 struct archive_entry* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct archive_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

struct archive_entry *
FUNC7(struct archive_entry *entry)
{
	struct archive_entry *entry2;
	struct ae_xattr *xp;
	struct ae_sparse *sp;
	size_t s;
	const void *p;

	/* Allocate new structure and copy over all of the fields. */
	/* TODO: Should we copy the archive over?  Or require a new archive
	 * as an argument? */
	entry2 = FUNC3(entry->archive);
	if (entry2 == NULL)
		return (NULL);
	entry2->ae_stat = entry->ae_stat;
	entry2->ae_fflags_set = entry->ae_fflags_set;
	entry2->ae_fflags_clear = entry->ae_fflags_clear;

	/* TODO: XXX If clone can have a different archive, what do we do here if
	 * character sets are different? XXX */
	FUNC6(&entry2->ae_fflags_text, &entry->ae_fflags_text);
	FUNC6(&entry2->ae_gname, &entry->ae_gname);
	FUNC6(&entry2->ae_hardlink, &entry->ae_hardlink);
	FUNC6(&entry2->ae_pathname, &entry->ae_pathname);
	FUNC6(&entry2->ae_sourcepath, &entry->ae_sourcepath);
	FUNC6(&entry2->ae_symlink, &entry->ae_symlink);
	entry2->ae_set = entry->ae_set;
	FUNC6(&entry2->ae_uname, &entry->ae_uname);

	/* Copy symlink type */
	entry2->ae_symlink_type = entry->ae_symlink_type;

	/* Copy encryption status */
	entry2->encryption = entry->encryption;
	
	/* Copy ACL data over. */
	FUNC0(&entry2->acl, &entry->acl);

	/* Copy Mac OS metadata. */
	p = FUNC2(entry, &s);
	FUNC1(entry2, p, s);

	/* Copy xattr data over. */
	xp = entry->xattr_head;
	while (xp != NULL) {
		FUNC5(entry2,
		    xp->name, xp->value, xp->size);
		xp = xp->next;
	}

	/* Copy sparse data over. */
	sp = entry->sparse_head;
	while (sp != NULL) {
		FUNC4(entry2,
		    sp->offset, sp->length);
		sp = sp->next;
	}

	return (entry2);
}
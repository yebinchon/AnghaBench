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
struct archive_entry {struct ae_xattr* xattr_head; } ;
struct ae_xattr {struct ae_xattr* value; struct ae_xattr* name; struct ae_xattr* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ae_xattr*) ; 

void
FUNC1(struct archive_entry *entry)
{
	struct ae_xattr	*xp;

	while (entry->xattr_head != NULL) {
		xp = entry->xattr_head->next;
		FUNC0(entry->xattr_head->name);
		FUNC0(entry->xattr_head->value);
		FUNC0(entry->xattr_head);
		entry->xattr_head = xp;
	}

	entry->xattr_head = NULL;
}
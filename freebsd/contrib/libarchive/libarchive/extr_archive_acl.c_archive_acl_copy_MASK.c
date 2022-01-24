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
struct archive_acl_entry {struct archive_acl_entry* next; int /*<<< orphan*/  name; int /*<<< orphan*/  id; int /*<<< orphan*/  tag; int /*<<< orphan*/  permset; int /*<<< orphan*/  type; } ;
struct archive_acl {struct archive_acl_entry* acl_head; int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 struct archive_acl_entry* FUNC0 (struct archive_acl*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_acl*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC3(struct archive_acl *dest, struct archive_acl *src)
{
	struct archive_acl_entry *ap, *ap2;

	FUNC1(dest);

	dest->mode = src->mode;
	ap = src->acl_head;
	while (ap != NULL) {
		ap2 = FUNC0(dest,
		    ap->type, ap->permset, ap->tag, ap->id);
		if (ap2 != NULL)
			FUNC2(&ap2->name, &ap->name);
		ap = ap->next;
	}
}
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
struct archive_acl_entry {int /*<<< orphan*/  name; } ;
struct archive_acl {int dummy; } ;

/* Variables and functions */
 int ARCHIVE_FAILED ; 
 int ARCHIVE_OK ; 
 struct archive_acl_entry* FUNC0 (struct archive_acl*,int,int,int,int) ; 
 scalar_t__ FUNC1 (struct archive_acl*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*) ; 

int
FUNC4(struct archive_acl *acl,
    int type, int permset, int tag, int id, const char *name)
{
	struct archive_acl_entry *ap;

	if (FUNC1(acl, type, permset, tag) == 0)
		return ARCHIVE_OK;
	ap = FUNC0(acl, type, permset, tag, id);
	if (ap == NULL) {
		/* XXX Error XXX */
		return ARCHIVE_FAILED;
	}
	if (name != NULL  &&  *name != '\0')
		FUNC3(&ap->name, name);
	else
		FUNC2(&ap->name);
	return ARCHIVE_OK;
}
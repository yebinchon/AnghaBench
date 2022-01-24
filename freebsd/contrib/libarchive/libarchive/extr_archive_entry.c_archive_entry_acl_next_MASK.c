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
struct archive_entry {int /*<<< orphan*/  acl; int /*<<< orphan*/  archive; } ;

/* Variables and functions */
 int ARCHIVE_FATAL ; 
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int*,int*,int*,int*,char const**) ; 
 scalar_t__ errno ; 

int
FUNC2(struct archive_entry *entry, int want_type, int *type,
    int *permset, int *tag, int *id, const char **name)
{
	int r;
	r = FUNC1(entry->archive, &entry->acl, want_type, type,
		permset, tag, id, name);
	if (r == ARCHIVE_FATAL && errno == ENOMEM)
		FUNC0(1, "No memory");
	return (r);
}
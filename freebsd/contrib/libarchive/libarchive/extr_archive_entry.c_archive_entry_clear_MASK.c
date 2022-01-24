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
struct archive_entry {int /*<<< orphan*/  ae_symlink_type; int /*<<< orphan*/  stat; int /*<<< orphan*/  acl; int /*<<< orphan*/  ae_uname; int /*<<< orphan*/  ae_symlink; int /*<<< orphan*/  ae_sourcepath; int /*<<< orphan*/  ae_pathname; int /*<<< orphan*/  ae_hardlink; int /*<<< orphan*/  ae_gname; int /*<<< orphan*/  ae_fflags_text; } ;

/* Variables and functions */
 int /*<<< orphan*/  AE_SYMLINK_TYPE_UNDEFINED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct archive_entry*,int /*<<< orphan*/ ,int) ; 

struct archive_entry *
FUNC7(struct archive_entry *entry)
{
	if (entry == NULL)
		return (NULL);
	FUNC4(&entry->ae_fflags_text);
	FUNC4(&entry->ae_gname);
	FUNC4(&entry->ae_hardlink);
	FUNC4(&entry->ae_pathname);
	FUNC4(&entry->ae_sourcepath);
	FUNC4(&entry->ae_symlink);
	FUNC4(&entry->ae_uname);
	FUNC1(entry, NULL, 0);
	FUNC0(&entry->acl);
	FUNC3(entry);
	FUNC2(entry);
	FUNC5(entry->stat);
	entry->ae_symlink_type = AE_SYMLINK_TYPE_UNDEFINED;
	FUNC6(entry, 0, sizeof(*entry));
	return entry;
}
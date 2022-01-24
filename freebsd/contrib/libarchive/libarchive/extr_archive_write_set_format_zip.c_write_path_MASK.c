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
struct archive_write {int dummy; } ;
struct archive_entry {int dummy; } ;
typedef  scalar_t__ mode_t ;

/* Variables and functions */
 scalar_t__ AE_IFDIR ; 
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int FUNC0 (struct archive_write*,char const*,int) ; 
 scalar_t__ FUNC1 (struct archive_entry*) ; 
 char* FUNC2 (struct archive_entry*) ; 
 int FUNC3 (char const*) ; 

__attribute__((used)) static int
FUNC4(struct archive_entry *entry, struct archive_write *archive)
{
	int ret;
	const char *path;
	mode_t type;
	size_t written_bytes;

	path = FUNC2(entry);
	type = FUNC1(entry);
	written_bytes = 0;

	if (path == NULL)
		return (ARCHIVE_FATAL);

	ret = FUNC0(archive, path, FUNC3(path));
	if (ret != ARCHIVE_OK)
		return (ARCHIVE_FATAL);
	written_bytes += FUNC3(path);

	/* Folders are recognized by a trailing slash. */
	if ((type == AE_IFDIR) & (path[FUNC3(path) - 1] != '/')) {
		ret = FUNC0(archive, "/", 1);
		if (ret != ARCHIVE_OK)
			return (ARCHIVE_FATAL);
		written_bytes += 1;
	}

	return ((int)written_bytes);
}
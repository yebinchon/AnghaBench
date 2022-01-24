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
struct archive_write {int /*<<< orphan*/  archive; } ;
struct archive_entry {int dummy; } ;

/* Variables and functions */
 int ARCHIVE_FAILED ; 
 int ARCHIVE_FATAL ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct archive_entry*) ; 
 scalar_t__ FUNC1 (struct archive_entry*,char const**,size_t*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,char*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC5 (struct archive_write*) ; 
 int FUNC6 (struct archive_write*,struct archive_entry*) ; 

__attribute__((used)) static int
FUNC7(struct archive_write *a, struct archive_entry *entry)
{
	const char *path;
	size_t len;

	if (FUNC0(entry) == 0) {
		FUNC4(&a->archive, -1, "Filetype required");
		return (ARCHIVE_FAILED);
	}

	if (FUNC1(entry, &path, &len, FUNC5(a)) != 0
	    && errno == ENOMEM) {
		FUNC4(&a->archive, ENOMEM,
		    "Can't allocate memory for Pathname");
		return (ARCHIVE_FATAL);
	}
	if (len == 0 || path == NULL || path[0] == '\0') {
		FUNC4(&a->archive, -1, "Pathname required");
		return (ARCHIVE_FAILED);
	}

	if (!FUNC3(entry) || FUNC2(entry) < 0) {
		FUNC4(&a->archive, -1, "Size required");
		return (ARCHIVE_FAILED);
	}
	return FUNC6(a, entry);
}
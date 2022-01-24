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
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 int AE_IFDIR ; 
 int AE_IFREG ; 
 int /*<<< orphan*/  ARCHIVE_EOF ; 
 int /*<<< orphan*/  ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive*,struct archive_entry**) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct archive*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct archive *a)
{
	struct archive_entry *ae;

	FUNC5(a, ARCHIVE_OK, FUNC3(a, &ae));
	FUNC6("New Folder/New Folder/", FUNC1(ae));
	FUNC4(AE_IFDIR, FUNC0(ae));
	/* Zip timestamps are local time, so vary by time zone. */
	/* TODO: A more complex assert would work here; we could
	   verify that it's within +/- 24 hours of a particular value. */
	/* assertEqualInt(1327314468, archive_entry_mtime(ae)); */
	FUNC4(0, FUNC2(ae));
	FUNC5(a, ARCHIVE_OK, FUNC3(a, &ae));
	FUNC6("New Folder/New Folder/New Text Document.txt", FUNC1(ae));
	FUNC4(AE_IFREG, FUNC0(ae));
	/* Zip timestamps are local time, so vary by time zone. */
	/* assertEqualInt(1327314476, archive_entry_mtime(ae)); */
	FUNC4(11, FUNC2(ae));
	FUNC5(a, ARCHIVE_EOF, FUNC3(a, &ae));
}
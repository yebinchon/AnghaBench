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
struct archive_write_disk {int /*<<< orphan*/  archive; int /*<<< orphan*/  entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_ERRNO_FILE_FORMAT ; 
 int ARCHIVE_OK ; 
 int ARCHIVE_WARN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC2(struct archive_write_disk *a)
{
	static int warning_done = 0;

	/* If there aren't any extended attributes, then it's okay not
	 * to extract them, otherwise, issue a single warning. */
	if (FUNC0(a->entry) != 0 && !warning_done) {
		warning_done = 1;
		FUNC1(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
		    "Cannot restore extended attributes on this system");
		return (ARCHIVE_WARN);
	}
	/* Warning was already emitted; suppress further warnings. */
	return (ARCHIVE_OK);
}
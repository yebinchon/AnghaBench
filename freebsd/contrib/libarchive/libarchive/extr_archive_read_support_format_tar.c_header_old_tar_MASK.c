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
struct tar {int entry_padding; int entry_bytes_remaining; int /*<<< orphan*/  sconv; } ;
struct archive_read {int dummy; } ;
struct archive_entry_header_ustar {int /*<<< orphan*/  name; } ;
struct archive_entry {int dummy; } ;

/* Variables and functions */
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 scalar_t__ FUNC0 (struct archive_entry*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct archive_read*,struct tar*,struct archive_entry*,void const*) ; 
 int FUNC2 (struct archive_read*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC3(struct archive_read *a, struct tar *tar,
    struct archive_entry *entry, const void *h)
{
	const struct archive_entry_header_ustar	*header;
	int err = ARCHIVE_OK, err2;

	/* Copy filename over (to ensure null termination). */
	header = (const struct archive_entry_header_ustar *)h;
	if (FUNC0(entry,
	    header->name, sizeof(header->name), tar->sconv) != 0) {
		err = FUNC2(a, tar->sconv, "Pathname");
		if (err == ARCHIVE_FATAL)
			return (err);
	}

	/* Grab rest of common fields */
	err2 = FUNC1(a, tar, entry, h);
	if (err > err2)
		err = err2;

	tar->entry_padding = 0x1ff & (-tar->entry_bytes_remaining);
	return (err);
}
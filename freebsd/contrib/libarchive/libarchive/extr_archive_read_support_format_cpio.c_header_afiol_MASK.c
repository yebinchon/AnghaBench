#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct cpio {scalar_t__ entry_padding; scalar_t__ entry_bytes_remaining; } ;
struct TYPE_2__ {char* archive_format_name; int /*<<< orphan*/  archive_format; } ;
struct archive_read {TYPE_1__ archive; } ;
struct archive_entry {int dummy; } ;
typedef  int /*<<< orphan*/  mode_t ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int ARCHIVE_FATAL ; 
 int /*<<< orphan*/  ARCHIVE_FORMAT_CPIO_AFIO_LARGE ; 
 int ARCHIVE_OK ; 
 void* FUNC0 (struct archive_read*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_read*,int /*<<< orphan*/ ) ; 
 int afiol_dev_offset ; 
 int /*<<< orphan*/  afiol_dev_size ; 
 int afiol_filesize_offset ; 
 int /*<<< orphan*/  afiol_filesize_size ; 
 int afiol_gid_offset ; 
 int /*<<< orphan*/  afiol_gid_size ; 
 int /*<<< orphan*/  afiol_header_size ; 
 int afiol_ino_offset ; 
 int /*<<< orphan*/  afiol_ino_size ; 
 int afiol_mode_offset ; 
 int /*<<< orphan*/  afiol_mode_size ; 
 int afiol_mtime_offset ; 
 int /*<<< orphan*/  afiol_mtime_size ; 
 int afiol_namesize_offset ; 
 int /*<<< orphan*/  afiol_namesize_size ; 
 int afiol_nlink_offset ; 
 int /*<<< orphan*/  afiol_nlink_size ; 
 int afiol_rdev_offset ; 
 int /*<<< orphan*/  afiol_rdev_size ; 
 int afiol_uid_offset ; 
 int /*<<< orphan*/  afiol_uid_size ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_entry*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct archive_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct archive_entry*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct archive_entry*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct archive_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct archive_entry*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct archive_entry*,scalar_t__) ; 
 scalar_t__ FUNC11 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC13(struct archive_read *a, struct cpio *cpio,
    struct archive_entry *entry, size_t *namelength, size_t *name_pad)
{
	const void *h;
	const char *header;

	a->archive.archive_format = ARCHIVE_FORMAT_CPIO_AFIO_LARGE;
	a->archive.archive_format_name = "afio large ASCII";

	/* Read fixed-size portion of header. */
	h = FUNC0(a, afiol_header_size, NULL);
	if (h == NULL)
	    return (ARCHIVE_FATAL);

	/* Parse out octal fields. */
	header = (const char *)h;

	FUNC2(entry, 
		(dev_t)FUNC11(header + afiol_dev_offset, afiol_dev_size));
	FUNC4(entry, FUNC11(header + afiol_ino_offset, afiol_ino_size));
	FUNC5(entry,
		(mode_t)FUNC12(header + afiol_mode_offset, afiol_mode_size));
	FUNC10(entry, FUNC11(header + afiol_uid_offset, afiol_uid_size));
	FUNC3(entry, FUNC11(header + afiol_gid_offset, afiol_gid_size));
	FUNC7(entry,
		(unsigned int)FUNC11(header + afiol_nlink_offset, afiol_nlink_size));
	FUNC8(entry,
		(dev_t)FUNC11(header + afiol_rdev_offset, afiol_rdev_size));
	FUNC6(entry, FUNC11(header + afiol_mtime_offset, afiol_mtime_size), 0);
	*namelength = (size_t)FUNC11(header + afiol_namesize_offset, afiol_namesize_size);
	*name_pad = 0; /* No padding of filename. */

	cpio->entry_bytes_remaining =
	    FUNC11(header + afiol_filesize_offset, afiol_filesize_size);
	FUNC9(entry, cpio->entry_bytes_remaining);
	cpio->entry_padding = 0;
	FUNC1(a, afiol_header_size);
	return (ARCHIVE_OK);
}
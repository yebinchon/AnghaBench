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
struct TYPE_2__ {scalar_t__ archive_format; char* archive_format_name; } ;
struct archive_read {TYPE_1__ archive; } ;
struct archive_entry {int dummy; } ;
typedef  int /*<<< orphan*/  mode_t ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int ARCHIVE_FATAL ; 
 scalar_t__ ARCHIVE_FORMAT_CPIO_AFIO_LARGE ; 
 scalar_t__ ARCHIVE_FORMAT_CPIO_POSIX ; 
 int ARCHIVE_OK ; 
 int ARCHIVE_WARN ; 
 void* FUNC0 (struct archive_read*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_read*,int /*<<< orphan*/ ) ; 
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
 int FUNC12 (struct archive_read*) ; 
 int FUNC13 (struct archive_read*,struct cpio*,struct archive_entry*,size_t*,size_t*) ; 
 int odc_dev_offset ; 
 int /*<<< orphan*/  odc_dev_size ; 
 int odc_filesize_offset ; 
 int /*<<< orphan*/  odc_filesize_size ; 
 int odc_gid_offset ; 
 int /*<<< orphan*/  odc_gid_size ; 
 int /*<<< orphan*/  odc_header_size ; 
 int odc_ino_offset ; 
 int /*<<< orphan*/  odc_ino_size ; 
 int odc_mode_offset ; 
 int /*<<< orphan*/  odc_mode_size ; 
 int odc_mtime_offset ; 
 int /*<<< orphan*/  odc_mtime_size ; 
 int odc_namesize_offset ; 
 int /*<<< orphan*/  odc_namesize_size ; 
 int odc_nlink_offset ; 
 int /*<<< orphan*/  odc_nlink_size ; 
 int odc_rdev_offset ; 
 int /*<<< orphan*/  odc_rdev_size ; 
 int odc_uid_offset ; 
 int /*<<< orphan*/  odc_uid_size ; 

__attribute__((used)) static int
FUNC14(struct archive_read *a, struct cpio *cpio,
    struct archive_entry *entry, size_t *namelength, size_t *name_pad)
{
	const void *h;
	int r;
	const char *header;

	a->archive.archive_format = ARCHIVE_FORMAT_CPIO_POSIX;
	a->archive.archive_format_name = "POSIX octet-oriented cpio";

	/* Find the start of the next header. */
	r = FUNC12(a);
	if (r < ARCHIVE_WARN)
		return (r);

	if (a->archive.archive_format == ARCHIVE_FORMAT_CPIO_AFIO_LARGE) {
		int r2 = (FUNC13(a, cpio, entry, namelength, name_pad));
		if (r2 == ARCHIVE_OK)
			return (r);
		else
			return (r2);
	}

	/* Read fixed-size portion of header. */
	h = FUNC0(a, odc_header_size, NULL);
	if (h == NULL)
	    return (ARCHIVE_FATAL);

	/* Parse out octal fields. */
	header = (const char *)h;

	FUNC2(entry, 
		(dev_t)FUNC11(header + odc_dev_offset, odc_dev_size));
	FUNC4(entry, FUNC11(header + odc_ino_offset, odc_ino_size));
	FUNC5(entry, 
		(mode_t)FUNC11(header + odc_mode_offset, odc_mode_size));
	FUNC10(entry, FUNC11(header + odc_uid_offset, odc_uid_size));
	FUNC3(entry, FUNC11(header + odc_gid_offset, odc_gid_size));
	FUNC7(entry, 
		(unsigned int)FUNC11(header + odc_nlink_offset, odc_nlink_size));
	FUNC8(entry,
		(dev_t)FUNC11(header + odc_rdev_offset, odc_rdev_size));
	FUNC6(entry, FUNC11(header + odc_mtime_offset, odc_mtime_size), 0);
	*namelength = (size_t)FUNC11(header + odc_namesize_offset, odc_namesize_size);
	*name_pad = 0; /* No padding of filename. */

	/*
	 * Note: entry_bytes_remaining is at least 64 bits and
	 * therefore guaranteed to be big enough for a 33-bit file
	 * size.
	 */
	cpio->entry_bytes_remaining =
	    FUNC11(header + odc_filesize_offset, odc_filesize_size);
	FUNC9(entry, cpio->entry_bytes_remaining);
	cpio->entry_padding = 0;
	FUNC1(a, odc_header_size);
	return (r);
}
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
struct cpio {int entry_bytes_remaining; int entry_padding; } ;
struct TYPE_2__ {char* archive_format_name; int /*<<< orphan*/  archive_format; } ;
struct archive_read {TYPE_1__ archive; } ;
struct archive_entry {int dummy; } ;

/* Variables and functions */
 int ARCHIVE_FATAL ; 
 int /*<<< orphan*/  ARCHIVE_FORMAT_CPIO_BIN_LE ; 
 int ARCHIVE_OK ; 
 void* FUNC0 (struct archive_read*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_read*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*,unsigned char const) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*,unsigned char const) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_entry*,unsigned char const) ; 
 int /*<<< orphan*/  FUNC5 (struct archive_entry*,unsigned char const) ; 
 int /*<<< orphan*/  FUNC6 (struct archive_entry*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct archive_entry*,unsigned char const) ; 
 int /*<<< orphan*/  FUNC8 (struct archive_entry*,unsigned char const) ; 
 int /*<<< orphan*/  FUNC9 (struct archive_entry*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct archive_entry*,unsigned char const) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 size_t bin_dev_offset ; 
 int bin_filesize_offset ; 
 size_t bin_gid_offset ; 
 int /*<<< orphan*/  bin_header_size ; 
 size_t bin_ino_offset ; 
 size_t bin_mode_offset ; 
 int bin_mtime_offset ; 
 size_t bin_namesize_offset ; 
 size_t bin_nlink_offset ; 
 size_t bin_rdev_offset ; 
 size_t bin_uid_offset ; 
 int FUNC12 (unsigned char const*) ; 

__attribute__((used)) static int
FUNC13(struct archive_read *a, struct cpio *cpio,
    struct archive_entry *entry, size_t *namelength, size_t *name_pad)
{
	const void *h;
	const unsigned char *header;

	a->archive.archive_format = ARCHIVE_FORMAT_CPIO_BIN_LE;
	a->archive.archive_format_name = "cpio (little-endian binary)";

	/* Read fixed-size portion of header. */
	h = FUNC0(a, bin_header_size, NULL);
	if (h == NULL) {
	    FUNC11(&a->archive, 0,
		"End of file trying to read next cpio header");
	    return (ARCHIVE_FATAL);
	}

	/* Parse out binary fields. */
	header = (const unsigned char *)h;

	FUNC2(entry, header[bin_dev_offset] + header[bin_dev_offset + 1] * 256);
	FUNC4(entry, header[bin_ino_offset] + header[bin_ino_offset + 1] * 256);
	FUNC5(entry, header[bin_mode_offset] + header[bin_mode_offset + 1] * 256);
	FUNC10(entry, header[bin_uid_offset] + header[bin_uid_offset + 1] * 256);
	FUNC3(entry, header[bin_gid_offset] + header[bin_gid_offset + 1] * 256);
	FUNC7(entry, header[bin_nlink_offset] + header[bin_nlink_offset + 1] * 256);
	FUNC8(entry, header[bin_rdev_offset] + header[bin_rdev_offset + 1] * 256);
	FUNC6(entry, FUNC12(header + bin_mtime_offset), 0);
	*namelength = header[bin_namesize_offset] + header[bin_namesize_offset + 1] * 256;
	*name_pad = *namelength & 1; /* Pad to even. */

	cpio->entry_bytes_remaining = FUNC12(header + bin_filesize_offset);
	FUNC9(entry, cpio->entry_bytes_remaining);
	cpio->entry_padding = cpio->entry_bytes_remaining & 1; /* Pad to even. */
	FUNC1(a, bin_header_size);
	return (ARCHIVE_OK);
}
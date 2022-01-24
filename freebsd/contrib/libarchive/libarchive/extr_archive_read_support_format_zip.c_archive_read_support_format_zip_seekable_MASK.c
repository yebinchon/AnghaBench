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
struct zip {int process_mac_extensions; int /*<<< orphan*/  crc32func; int /*<<< orphan*/  has_encrypted_entries; } ;
struct archive_read {int /*<<< orphan*/  archive; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  ARCHIVE_READ_FORMAT_ENCRYPTION_DONT_KNOW ; 
 int /*<<< orphan*/  ARCHIVE_READ_MAGIC ; 
 int /*<<< orphan*/  ARCHIVE_STATE_NEW ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC0 (struct archive_read*,struct zip*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct archive*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  archive_read_format_zip_cleanup ; 
 int /*<<< orphan*/  archive_read_format_zip_has_encrypted_entries ; 
 int /*<<< orphan*/  archive_read_format_zip_options ; 
 int /*<<< orphan*/  archive_read_format_zip_read_data ; 
 int /*<<< orphan*/  archive_read_format_zip_read_data_skip_seekable ; 
 int /*<<< orphan*/  archive_read_format_zip_seekable_bid ; 
 int /*<<< orphan*/  archive_read_format_zip_seekable_read_header ; 
 int /*<<< orphan*/  archive_read_support_format_zip_capabilities_seekable ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct zip*) ; 
 int /*<<< orphan*/  real_crc32 ; 

int
FUNC5(struct archive *_a)
{
	struct archive_read *a = (struct archive_read *)_a;
	struct zip *zip;
	int r;

	FUNC1(_a, ARCHIVE_READ_MAGIC,
	    ARCHIVE_STATE_NEW, "archive_read_support_format_zip_seekable");

	zip = (struct zip *)FUNC3(1, sizeof(*zip));
	if (zip == NULL) {
		FUNC2(&a->archive, ENOMEM,
		    "Can't allocate zip data");
		return (ARCHIVE_FATAL);
	}

#ifdef HAVE_COPYFILE_H
	/* Set this by default on Mac OS. */
	zip->process_mac_extensions = 1;
#endif

	/*
	 * Until enough data has been read, we cannot tell about
	 * any encrypted entries yet.
	 */
	zip->has_encrypted_entries = ARCHIVE_READ_FORMAT_ENCRYPTION_DONT_KNOW;
	zip->crc32func = real_crc32;

	r = FUNC0(a,
	    zip,
	    "zip",
	    archive_read_format_zip_seekable_bid,
	    archive_read_format_zip_options,
	    archive_read_format_zip_seekable_read_header,
	    archive_read_format_zip_read_data,
	    archive_read_format_zip_read_data_skip_seekable,
	    NULL,
	    archive_read_format_zip_cleanup,
	    archive_read_support_format_zip_capabilities_seekable,
	    archive_read_format_zip_has_encrypted_entries);

	if (r != ARCHIVE_OK)
		FUNC4(zip);
	return (ARCHIVE_OK);
}
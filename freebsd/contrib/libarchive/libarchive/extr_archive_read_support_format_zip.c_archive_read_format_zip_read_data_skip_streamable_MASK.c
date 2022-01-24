#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct zip {int unconsumed; int entry_bytes_remaining; int has_encrypted_entries; TYPE_2__* entry; scalar_t__ end_of_entry; scalar_t__ init_decryption; } ;
struct archive_read {int /*<<< orphan*/  archive; TYPE_1__* format; } ;
typedef  int ssize_t ;
typedef  scalar_t__ int64_t ;
struct TYPE_4__ {int zip_flags; scalar_t__ compressed_size; int compression; int flags; } ;
struct TYPE_3__ {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_ERRNO_FILE_FORMAT ; 
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int LA_USED_ZIP64 ; 
 int WINZIP_AES_ENCRYPTION ; 
 int ZIP_LENGTH_AT_END ; 
 int ZIP_STRONG_ENCRYPTED ; 
 char* FUNC0 (struct archive_read*,int,int*) ; 
 scalar_t__ FUNC1 (struct archive_read*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (struct archive_read*) ; 
 int FUNC4 (struct archive_read*) ; 
 int FUNC5 (struct archive_read*) ; 
 int FUNC6 (struct archive_read*,void const**,size_t*,scalar_t__*) ; 

__attribute__((used)) static int
FUNC7(struct archive_read *a)
{
	struct zip *zip;
	int64_t bytes_skipped;

	zip = (struct zip *)(a->format->data);
	bytes_skipped = FUNC1(a, zip->unconsumed);
	zip->unconsumed = 0;
	if (bytes_skipped < 0)
		return (ARCHIVE_FATAL);

	/* If we've already read to end of data, we're done. */
	if (zip->end_of_entry)
		return (ARCHIVE_OK);

	/* So we know we're streaming... */
	if (0 == (zip->entry->zip_flags & ZIP_LENGTH_AT_END)
	    || zip->entry->compressed_size > 0) {
		/* We know the compressed length, so we can just skip. */
		bytes_skipped = FUNC1(a,
					zip->entry_bytes_remaining);
		if (bytes_skipped < 0)
			return (ARCHIVE_FATAL);
		return (ARCHIVE_OK);
	}

	if (zip->init_decryption) {
		int r;

		zip->has_encrypted_entries = 1;
		if (zip->entry->zip_flags & ZIP_STRONG_ENCRYPTED)
			r = FUNC5(a);
		else if (zip->entry->compression == WINZIP_AES_ENCRYPTION)
			r = FUNC3(a);
		else
			r = FUNC4(a);
		if (r != ARCHIVE_OK)
			return (r);
		zip->init_decryption = 0;
	}

	/* We're streaming and we don't know the length. */
	/* If the body is compressed and we know the format, we can
	 * find an exact end-of-entry by decompressing it. */
	switch (zip->entry->compression) {
#ifdef HAVE_ZLIB_H
	case 8: /* Deflate compression. */
		while (!zip->end_of_entry) {
			int64_t offset = 0;
			const void *buff = NULL;
			size_t size = 0;
			int r;
			r =  zip_read_data_deflate(a, &buff, &size, &offset);
			if (r != ARCHIVE_OK)
				return (r);
		}
		return ARCHIVE_OK;
#endif
	default: /* Uncompressed or unknown. */
		/* Scan for a PK\007\010 signature. */
		for (;;) {
			const char *p, *buff;
			ssize_t bytes_avail;
			buff = FUNC0(a, 16, &bytes_avail);
			if (bytes_avail < 16) {
				FUNC2(&a->archive,
				    ARCHIVE_ERRNO_FILE_FORMAT,
				    "Truncated ZIP file data");
				return (ARCHIVE_FATAL);
			}
			p = buff;
			while (p <= buff + bytes_avail - 16) {
				if (p[3] == 'P') { p += 3; }
				else if (p[3] == 'K') { p += 2; }
				else if (p[3] == '\007') { p += 1; }
				else if (p[3] == '\010' && p[2] == '\007'
				    && p[1] == 'K' && p[0] == 'P') {
					if (zip->entry->flags & LA_USED_ZIP64)
						FUNC1(a,
						    p - buff + 24);
					else
						FUNC1(a,
						    p - buff + 16);
					return ARCHIVE_OK;
				} else { p += 4; }
			}
			FUNC1(a, p - buff);
		}
	}
}
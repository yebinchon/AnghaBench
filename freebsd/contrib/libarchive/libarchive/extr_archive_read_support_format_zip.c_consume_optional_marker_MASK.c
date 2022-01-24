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
typedef  scalar_t__ uint64_t ;
struct zip {int unconsumed; TYPE_1__* entry; scalar_t__ end_of_entry; } ;
struct archive_read {int /*<<< orphan*/  archive; } ;
struct TYPE_2__ {int zip_flags; int flags; void* uncompressed_size; void* compressed_size; void* crc32; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_ERRNO_FILE_FORMAT ; 
 int ARCHIVE_FAILED ; 
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 scalar_t__ INT64_MAX ; 
 int LA_USED_ZIP64 ; 
 int ZIP_LENGTH_AT_END ; 
 char* FUNC0 (struct archive_read*,int,int /*<<< orphan*/ *) ; 
 void* FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC4(struct archive_read *a, struct zip *zip)
{
	if (zip->end_of_entry && (zip->entry->zip_flags & ZIP_LENGTH_AT_END)) {
		const char *p;

		if (NULL == (p = FUNC0(a, 24, NULL))) {
			FUNC3(&a->archive,
			    ARCHIVE_ERRNO_FILE_FORMAT,
			    "Truncated ZIP end-of-file record");
			return (ARCHIVE_FATAL);
		}
		/* Consume the optional PK\007\010 marker. */
		if (p[0] == 'P' && p[1] == 'K' &&
		    p[2] == '\007' && p[3] == '\010') {
			p += 4;
			zip->unconsumed = 4;
		}
		if (zip->entry->flags & LA_USED_ZIP64) {
			uint64_t compressed, uncompressed;
			zip->entry->crc32 = FUNC1(p);
			compressed = FUNC2(p + 4);
			uncompressed = FUNC2(p + 12);
			if (compressed > INT64_MAX ||
			    uncompressed > INT64_MAX) {
				FUNC3(&a->archive,
				    ARCHIVE_ERRNO_FILE_FORMAT,
				    "Overflow of 64-bit file sizes");
				return ARCHIVE_FAILED;
			}
			zip->entry->compressed_size = compressed;
			zip->entry->uncompressed_size = uncompressed;
			zip->unconsumed += 20;
		} else {
			zip->entry->crc32 = FUNC1(p);
			zip->entry->compressed_size = FUNC1(p + 4);
			zip->entry->uncompressed_size = FUNC1(p + 8);
			zip->unconsumed += 12;
		}
	}

    return (ARCHIVE_OK);
}
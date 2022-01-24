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
struct cab {int read_data_invoked; int end_of_entry_cleanup; int /*<<< orphan*/  entry_offset; scalar_t__ end_of_entry; scalar_t__ end_of_archive; scalar_t__ entry_unconsumed; scalar_t__ bytes_skipped; int /*<<< orphan*/ * entry_cfdata; TYPE_2__* entry_cffile; } ;
struct archive_read {int /*<<< orphan*/  archive; TYPE_1__* format; } ;
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_4__ {int folder; } ;
struct TYPE_3__ {scalar_t__ data; } ;

/* Variables and functions */
 int ARCHIVE_EOF ; 
 int /*<<< orphan*/  ARCHIVE_ERRNO_FILE_FORMAT ; 
 int ARCHIVE_FAILED ; 
 int ARCHIVE_FATAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (struct archive_read*,scalar_t__) ; 
 int FUNC3 (struct archive_read*) ; 
 int FUNC4 (struct archive_read*,void const**,size_t*,int /*<<< orphan*/ *) ; 
#define  iFoldCONTINUED_FROM_PREV 130 
#define  iFoldCONTINUED_PREV_AND_NEXT 129 
#define  iFoldCONTINUED_TO_NEXT 128 

__attribute__((used)) static int
FUNC5(struct archive_read *a,
    const void **buff, size_t *size, int64_t *offset)
{
	struct cab *cab = (struct cab *)(a->format->data);
	int r;

	switch (cab->entry_cffile->folder) {
	case iFoldCONTINUED_FROM_PREV:
	case iFoldCONTINUED_TO_NEXT:
	case iFoldCONTINUED_PREV_AND_NEXT:
		*buff = NULL;
		*size = 0;
		*offset = 0;
		FUNC0(&a->archive);
		FUNC1(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
		    "Cannot restore this file split in multivolume.");
		return (ARCHIVE_FAILED);
	default:
		break;
	}
	if (cab->read_data_invoked == 0) {
		if (cab->bytes_skipped) {
			if (cab->entry_cfdata == NULL) {
				r = FUNC3(a);
				if (r < 0)
					return (r);
			}
			if (FUNC2(a, cab->bytes_skipped) < 0)
				return (ARCHIVE_FATAL);
			cab->bytes_skipped = 0;
		}
		cab->read_data_invoked = 1;
	}
	if (cab->entry_unconsumed) {
		/* Consume as much as the compressor actually used. */
		r = (int)FUNC2(a, cab->entry_unconsumed);
		cab->entry_unconsumed = 0;
		if (r < 0)
			return (r);
	}
	if (cab->end_of_archive || cab->end_of_entry) {
		if (!cab->end_of_entry_cleanup) {
			/* End-of-entry cleanup done. */
			cab->end_of_entry_cleanup = 1;
		}
		*offset = cab->entry_offset;
		*size = 0;
		*buff = NULL;
		return (ARCHIVE_EOF);
	}

	return (FUNC4(a, buff, size, offset));
}
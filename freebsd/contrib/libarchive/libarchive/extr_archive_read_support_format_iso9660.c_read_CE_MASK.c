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
struct read_ce_queue {TYPE_1__* reqs; scalar_t__ cnt; } ;
struct iso9660 {size_t logical_block_size; scalar_t__ current_position; struct read_ce_queue read_ce_req; } ;
struct file_info {size_t ce_offset; size_t ce_size; } ;
struct archive_read {int /*<<< orphan*/  archive; } ;
struct TYPE_2__ {scalar_t__ offset; struct file_info* file; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_ERRNO_FILE_FORMAT ; 
 int /*<<< orphan*/  ARCHIVE_ERRNO_MISC ; 
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 unsigned char* FUNC0 (struct archive_read*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_read*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct read_ce_queue*) ; 
 int FUNC4 (struct archive_read*,struct file_info*,unsigned char const*,unsigned char const*) ; 

__attribute__((used)) static int
FUNC5(struct archive_read *a, struct iso9660 *iso9660)
{
	struct read_ce_queue *heap;
	const unsigned char *b, *p, *end;
	struct file_info *file;
	size_t step;
	int r;

	/* Read data which RRIP "CE" extension points. */
	heap = &(iso9660->read_ce_req);
	step = iso9660->logical_block_size;
	while (heap->cnt &&
	    heap->reqs[0].offset == iso9660->current_position) {
		b = FUNC0(a, step, NULL);
		if (b == NULL) {
			FUNC2(&a->archive,
			    ARCHIVE_ERRNO_MISC,
			    "Failed to read full block when scanning "
			    "ISO9660 directory list");
			return (ARCHIVE_FATAL);
		}
		do {
			file = heap->reqs[0].file;
			if (file->ce_offset + file->ce_size > step) {
				FUNC2(&a->archive,
				    ARCHIVE_ERRNO_FILE_FORMAT,
				    "Malformed CE information");
				return (ARCHIVE_FATAL);
			}
			p = b + file->ce_offset;
			end = p + file->ce_size;
			FUNC3(heap);
			r = FUNC4(a, file, p, end);
			if (r != ARCHIVE_OK)
				return (ARCHIVE_FATAL);
		} while (heap->cnt &&
		    heap->reqs[0].offset == iso9660->current_position);
		/* NOTE: Do not move this consume's code to front of
		 * do-while loop. Registration of nested CE extension
		 * might cause error because of current position. */
		FUNC1(a, step);
		iso9660->current_position += step;
	}
	return (ARCHIVE_OK);
}
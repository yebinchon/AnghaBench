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
struct TYPE_3__ {scalar_t__ making; scalar_t__ detect_magic; scalar_t__ block_offset; } ;
struct iso9660 {scalar_t__ temp_fd; TYPE_2__* cur_file; TYPE_1__ zisofs; scalar_t__ need_multi_extent; } ;
struct content {size_t size; int blocks; struct content* next; int /*<<< orphan*/  offset_of_temp; } ;
struct archive_write {int /*<<< orphan*/  archive; struct iso9660* format_data; } ;
typedef  size_t ssize_t ;
struct TYPE_4__ {struct content* cur_content; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_ERRNO_MISC ; 
 size_t ARCHIVE_FATAL ; 
 scalar_t__ ARCHIVE_OK ; 
 int /*<<< orphan*/  ENOMEM ; 
 int LOGICAL_BLOCK_BITS ; 
 int LOGICAL_BLOCK_SIZE ; 
 size_t MULTI_EXTENT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 struct content* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_write*) ; 
 scalar_t__ FUNC3 (struct archive_write*,size_t) ; 
 scalar_t__ FUNC4 (struct archive_write*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct archive_write*,void const*,size_t) ; 
 scalar_t__ FUNC6 (struct archive_write*,void const*,size_t) ; 

__attribute__((used)) static ssize_t
FUNC7(struct archive_write *a, const void *buff, size_t s)
{
	struct iso9660 *iso9660 = a->format_data;
	size_t ws;

	if (iso9660->temp_fd < 0) {
		FUNC0(&a->archive, ARCHIVE_ERRNO_MISC,
		    "Couldn't create temporary file");
		return (ARCHIVE_FATAL);
	}

	ws = s;
	if (iso9660->need_multi_extent &&
	    (iso9660->cur_file->cur_content->size + ws) >=
	      (MULTI_EXTENT_SIZE - LOGICAL_BLOCK_SIZE)) {
		struct content *con;
		size_t ts;

		ts = (size_t)(MULTI_EXTENT_SIZE - LOGICAL_BLOCK_SIZE -
		    iso9660->cur_file->cur_content->size);

		if (iso9660->zisofs.detect_magic)
			FUNC5(a, buff, ts);

		if (iso9660->zisofs.making) {
			if (FUNC6(a, buff, ts) != ARCHIVE_OK)
				return (ARCHIVE_FATAL);
		} else {
			if (FUNC4(a, buff, ts) != ARCHIVE_OK)
				return (ARCHIVE_FATAL);
			iso9660->cur_file->cur_content->size += ts;
		}

		/* Write padding. */
		if (FUNC3(a,
		    iso9660->cur_file->cur_content->size) != ARCHIVE_OK)
			return (ARCHIVE_FATAL);

		/* Compute the logical block number. */
		iso9660->cur_file->cur_content->blocks = (int)
		    ((iso9660->cur_file->cur_content->size
		     + LOGICAL_BLOCK_SIZE -1) >> LOGICAL_BLOCK_BITS);

		/*
		 * Make next extent.
		 */
		ws -= ts;
		buff = (const void *)(((const unsigned char *)buff) + ts);
		/* Make a content for next extent. */
		con = FUNC1(1, sizeof(*con));
		if (con == NULL) {
			FUNC0(&a->archive, ENOMEM,
			    "Can't allocate content data");
			return (ARCHIVE_FATAL);
		}
		con->offset_of_temp = FUNC2(a);
		iso9660->cur_file->cur_content->next = con;
		iso9660->cur_file->cur_content = con;
#ifdef HAVE_ZLIB_H
		iso9660->zisofs.block_offset = 0;
#endif
	}

	if (iso9660->zisofs.detect_magic)
		FUNC5(a, buff, ws);

	if (iso9660->zisofs.making) {
		if (FUNC6(a, buff, ws) != ARCHIVE_OK)
			return (ARCHIVE_FATAL);
	} else {
		if (FUNC4(a, buff, ws) != ARCHIVE_OK)
			return (ARCHIVE_FATAL);
		iso9660->cur_file->cur_content->size += ws;
	}

	return (s);
}
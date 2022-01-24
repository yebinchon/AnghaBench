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
struct TYPE_4__ {scalar_t__ dir; scalar_t__ unpacked_size; int eof; scalar_t__ bytes_remaining; } ;
struct TYPE_3__ {scalar_t__ last_write_ptr; } ;
struct rar5 {TYPE_2__ file; TYPE_1__ cstate; int /*<<< orphan*/  skip_mode; } ;
struct archive_read {int /*<<< orphan*/  archive; } ;
typedef  int /*<<< orphan*/  int64_t ;

/* Variables and functions */
 int ARCHIVE_EOF ; 
 int /*<<< orphan*/  ARCHIVE_ERRNO_FILE_FORMAT ; 
 int /*<<< orphan*/  ARCHIVE_ERRNO_PROGRAMMER ; 
 int ARCHIVE_FAILED ; 
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct archive_read*,struct rar5*,void const**,size_t*,int /*<<< orphan*/ *) ; 
 struct rar5* FUNC2 (struct archive_read*) ; 
 int FUNC3 (struct rar5*,void const**,size_t*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct archive_read*) ; 

__attribute__((used)) static int FUNC5(struct archive_read *a, const void **buff,
    size_t *size, int64_t *offset) {
	int ret;
	struct rar5* rar = FUNC2(a);

	if(rar->file.dir > 0) {
		/* Don't process any data if this file entry was declared
		 * as a directory. This is needed, because entries marked as
		 * directory doesn't have any dictionary buffer allocated, so
		 * it's impossible to perform any decompression. */
		FUNC0(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
		    "Can't decompress an entry marked as a directory");
		return ARCHIVE_FAILED;
	}

	if(!rar->skip_mode && (rar->cstate.last_write_ptr > rar->file.unpacked_size)) {
		FUNC0(&a->archive, ARCHIVE_ERRNO_PROGRAMMER,
		    "Unpacker has written too many bytes");
		return ARCHIVE_FATAL;
	}

	ret = FUNC3(rar, buff, size, offset);
	if(ret == ARCHIVE_OK) {
		return ret;
	}

	if(rar->file.eof == 1) {
		return ARCHIVE_EOF;
	}

	ret = FUNC1(a, rar, buff, size, offset);
	if(ret != ARCHIVE_OK) {
		return ret;
	}

	if(rar->file.bytes_remaining == 0 &&
			rar->cstate.last_write_ptr == rar->file.unpacked_size)
	{
		/* If all bytes of current file were processed, run
		 * finalization.
		 *
		 * Finalization will check checksum against proper values. If
		 * some of the checksums will not match, we'll return an error
		 * value in the last `archive_read_data` call to signal an error
		 * to the user. */

		rar->file.eof = 1;
		return FUNC4(a);
	}

	return ARCHIVE_OK;
}
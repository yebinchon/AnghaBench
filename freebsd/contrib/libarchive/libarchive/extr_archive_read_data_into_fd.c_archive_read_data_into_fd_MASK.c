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
struct stat {int /*<<< orphan*/  st_mode; } ;
struct archive {int dummy; } ;
typedef  size_t ssize_t ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 int ARCHIVE_EOF ; 
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  ARCHIVE_READ_MAGIC ; 
 int /*<<< orphan*/  ARCHIVE_STATE_DATA ; 
 size_t MAX_WRITE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct archive*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct archive*,void const**,size_t*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive*,int /*<<< orphan*/ ,char*) ; 
 char* FUNC4 (int,size_t) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int,struct stat*) ; 
 int FUNC7 (struct archive*,int,int,size_t,char*,scalar_t__,scalar_t__) ; 
 size_t FUNC8 (int,char const*,size_t) ; 

int
FUNC9(struct archive *a, int fd)
{
	struct stat st;
	int r, r2;
	const void *buff;
	size_t size, bytes_to_write;
	ssize_t bytes_written;
	int64_t target_offset;
	int64_t actual_offset = 0;
	int can_lseek;
	char *nulls = NULL;
	size_t nulls_size = 16384;

	FUNC1(a, ARCHIVE_READ_MAGIC, ARCHIVE_STATE_DATA,
	    "archive_read_data_into_fd");

	can_lseek = (FUNC6(fd, &st) == 0) && FUNC0(st.st_mode);
	if (!can_lseek)
		nulls = FUNC4(1, nulls_size);

	while ((r = FUNC2(a, &buff, &size, &target_offset)) ==
	    ARCHIVE_OK) {
		const char *p = buff;
		if (target_offset > actual_offset) {
			r = FUNC7(a, fd, can_lseek, nulls_size, nulls,
			    target_offset, actual_offset);
			if (r != ARCHIVE_OK)
				break;
			actual_offset = target_offset;
		}
		while (size > 0) {
			bytes_to_write = size;
			if (bytes_to_write > MAX_WRITE)
				bytes_to_write = MAX_WRITE;
			bytes_written = FUNC8(fd, p, bytes_to_write);
			if (bytes_written < 0) {
				FUNC3(a, errno, "Write error");
				r = ARCHIVE_FATAL;
				goto cleanup;
			}
			actual_offset += bytes_written;
			p += bytes_written;
			size -= bytes_written;
		}
	}

	if (r == ARCHIVE_EOF && target_offset > actual_offset) {
		r2 = FUNC7(a, fd, can_lseek, nulls_size, nulls,
		    target_offset, actual_offset);
		if (r2 != ARCHIVE_OK)
			r = r2;
	}

cleanup:
	FUNC5(nulls);
	if (r != ARCHIVE_EOF)
		return (r);
	return (ARCHIVE_OK);
}
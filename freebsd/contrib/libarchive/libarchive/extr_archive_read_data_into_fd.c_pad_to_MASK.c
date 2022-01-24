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
struct archive {int dummy; } ;
typedef  scalar_t__ ssize_t ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  FUNC0 (struct archive*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC1 (int,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,char const*,size_t) ; 

__attribute__((used)) static int
FUNC3(struct archive *a, int fd, int can_lseek,
    size_t nulls_size, const char *nulls,
    int64_t target_offset, int64_t actual_offset)
{
	size_t to_write;
	ssize_t bytes_written;

	if (can_lseek) {
		actual_offset = FUNC1(fd,
		    target_offset - actual_offset, SEEK_CUR);
		if (actual_offset != target_offset) {
			FUNC0(a, errno, "Seek error");
			return (ARCHIVE_FATAL);
		}
		return (ARCHIVE_OK);
	}
	while (target_offset > actual_offset) {
		to_write = nulls_size;
		if (target_offset < actual_offset + (int64_t)nulls_size)
			to_write = (size_t)(target_offset - actual_offset);
		bytes_written = FUNC2(fd, nulls, to_write);
		if (bytes_written < 0) {
			FUNC0(a, errno, "Write error");
			return (ARCHIVE_FATAL);
		}
		actual_offset += bytes_written;
	}
	return (ARCHIVE_OK);
}
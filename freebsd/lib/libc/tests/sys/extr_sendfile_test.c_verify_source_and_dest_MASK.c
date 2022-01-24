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
typedef  scalar_t__ off_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 char* MAP_FAILED ; 
 int /*<<< orphan*/  MAP_PRIVATE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  PROT_READ ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,size_t) ; 
 char* FUNC7 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*,size_t) ; 
 int FUNC9 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12(const char* dest_filename, int src_fd, off_t offset,
    size_t nbytes)
{
	char *dest_pointer, *src_pointer;
	off_t dest_file_size, src_file_size;
	size_t length;
	int dest_fd;

	FUNC2(dest_filename, "dest_file: ");

	dest_fd = FUNC9(dest_filename, O_RDONLY);
	FUNC1(dest_fd != -1, "open failed");

	dest_file_size = FUNC4(dest_fd);
	src_file_size = FUNC4(src_fd);

	/*
	 * Per sendfile(2), "send the whole file" (paraphrased). This means
	 * that we need to grab the file size, as passing in length = 0 with
	 * mmap(2) will result in a failure with EINVAL (length = 0 is invalid).
	 */
	length = (nbytes == 0) ? (size_t)(src_file_size - offset) : nbytes;

	FUNC0(dest_file_size, length,
	    "number of bytes written out to %s (%ju) doesn't match the "
	    "expected number of bytes (%zu)", dest_filename, dest_file_size,
	    length);

	FUNC0(0, FUNC5(src_fd, offset, SEEK_SET),
	    "lseek failed: %s", FUNC11(errno));

	dest_pointer = FUNC7(NULL, length, PROT_READ, MAP_PRIVATE, dest_fd, 0);
	FUNC1(dest_pointer != MAP_FAILED, "mmap failed: %s",
	    FUNC11(errno));

	FUNC10("Will mmap in the source file from offset=%jd to length=%zu\n",
	    offset, length);

	src_pointer = FUNC7(NULL, length, PROT_READ, MAP_PRIVATE, src_fd, offset);
	FUNC1(src_pointer != MAP_FAILED, "mmap failed: %s",
	    FUNC11(errno));

	FUNC0(0, FUNC6(src_pointer, dest_pointer, length),
	    "Contents of source and destination do not match. '%s' != '%s'",
	    src_pointer, dest_pointer);

	(void)FUNC8(src_pointer, length);
	(void)FUNC8(dest_pointer, length);
	(void)FUNC3(dest_fd);
}
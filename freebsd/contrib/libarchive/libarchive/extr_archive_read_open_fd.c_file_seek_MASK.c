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
struct read_fd_data {int /*<<< orphan*/  fd; } ;
struct archive {int dummy; } ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 scalar_t__ ARCHIVE_FAILED ; 
 scalar_t__ ARCHIVE_FATAL ; 
 scalar_t__ ESPIPE ; 
 int /*<<< orphan*/  FUNC0 (struct archive*,scalar_t__,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__,int) ; 

__attribute__((used)) static int64_t
FUNC2(struct archive *a, void *client_data, int64_t request, int whence)
{
	struct read_fd_data *mine = (struct read_fd_data *)client_data;
	int64_t r;

	/* We use off_t here because lseek() is declared that way. */
	/* See above for notes about when off_t is less than 64 bits. */
	r = FUNC1(mine->fd, request, whence);
	if (r >= 0)
		return r;

	if (errno == ESPIPE) {
		FUNC0(a, errno,
		    "A file descriptor(%d) is not seekable(PIPE)", mine->fd);
		return (ARCHIVE_FAILED);
	} else {
		/* If the input is corrupted or truncated, fail. */
		FUNC0(a, errno,
		    "Error seeking in a file descriptor(%d)", mine->fd);
		return (ARCHIVE_FATAL);
	}
}
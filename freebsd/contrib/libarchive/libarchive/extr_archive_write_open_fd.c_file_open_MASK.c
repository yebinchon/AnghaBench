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
struct write_fd_data {int fd; } ;
struct stat {int /*<<< orphan*/  st_mode; int /*<<< orphan*/  st_ino; int /*<<< orphan*/  st_dev; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct archive*,int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC5 (struct archive*) ; 
 int /*<<< orphan*/  FUNC6 (struct archive*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct archive*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC8 (int,struct stat*) ; 

__attribute__((used)) static int
FUNC9(struct archive *a, void *client_data)
{
	struct write_fd_data *mine;
	struct stat st;

	mine = (struct write_fd_data *)client_data;

	if (FUNC8(mine->fd, &st) != 0) {
		FUNC4(a, errno, "Couldn't stat fd %d", mine->fd);
		return (ARCHIVE_FATAL);
	}

	/*
	 * If this is a regular file, don't add it to itself.
	 */
	if (FUNC3(st.st_mode))
		FUNC7(a, st.st_dev, st.st_ino);

	/*
	 * If client hasn't explicitly set the last block handling,
	 * then set it here.
	 */
	if (FUNC5(a) < 0) {
		/* If the output is a block or character device, fifo,
		 * or stdout, pad the last block, otherwise leave it
		 * unpadded. */
		if (FUNC1(st.st_mode) || FUNC0(st.st_mode) ||
		    FUNC2(st.st_mode) || (mine->fd == 1))
			/* Last block will be fully padded. */
			FUNC6(a, 0);
		else
			FUNC6(a, 1);
	}

	return (ARCHIVE_OK);
}
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
struct read_file_data {int fd; scalar_t__ filename_type; int /*<<< orphan*/ * buffer; int /*<<< orphan*/  block_size; int /*<<< orphan*/  st_mode; } ;
struct archive {int dummy; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int ARCHIVE_OK ; 
 scalar_t__ FNT_STDIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct archive *a, void *client_data)
{
	struct read_file_data *mine = (struct read_file_data *)client_data;

	(void)a; /* UNUSED */

	/* Only flush and close if open succeeded. */
	if (mine->fd >= 0) {
		/*
		 * Sometimes, we should flush the input before closing.
		 *   Regular files: faster to just close without flush.
		 *   Disk-like devices:  Ditto.
		 *   Tapes: must not flush (user might need to
		 *      read the "next" item on a non-rewind device).
		 *   Pipes and sockets:  must flush (otherwise, the
		 *      program feeding the pipe or socket may complain).
		 * Here, I flush everything except for regular files and
		 * device nodes.
		 */
		if (!FUNC2(mine->st_mode)
		    && !FUNC1(mine->st_mode)
		    && !FUNC0(mine->st_mode)) {
			ssize_t bytesRead;
			do {
				bytesRead = FUNC5(mine->fd, mine->buffer,
				    mine->block_size);
			} while (bytesRead > 0);
		}
		/* If a named file was opened, then it needs to be closed. */
		if (mine->filename_type != FNT_STDIN)
			FUNC3(mine->fd);
	}
	FUNC4(mine->buffer);
	mine->buffer = NULL;
	mine->fd = -1;
	return (ARCHIVE_OK);
}
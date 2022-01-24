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
struct archive {int dummy; } ;

/* Variables and functions */
 int ARCHIVE_FATAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  O_BINARY ; 
 int /*<<< orphan*/  FUNC0 (struct archive*,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct archive*,struct write_fd_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  file_close ; 
 int /*<<< orphan*/  file_open ; 
 int /*<<< orphan*/  file_write ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

int
FUNC4(struct archive *a, int fd)
{
	struct write_fd_data *mine;

	mine = (struct write_fd_data *)FUNC2(sizeof(*mine));
	if (mine == NULL) {
		FUNC0(a, ENOMEM, "No memory");
		return (ARCHIVE_FATAL);
	}
	mine->fd = fd;
#if defined(__CYGWIN__) || defined(_WIN32)
	setmode(mine->fd, O_BINARY);
#endif
	return (FUNC1(a, mine,
		    file_open, file_write, file_close));
}
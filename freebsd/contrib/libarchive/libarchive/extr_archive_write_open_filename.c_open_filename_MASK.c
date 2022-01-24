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
typedef  char wchar_t ;
struct write_file_data {int fd; int /*<<< orphan*/  filename; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_ERRNO_MISC ; 
 int ARCHIVE_FAILED ; 
 int ARCHIVE_FATAL ; 
 scalar_t__ ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ *,void const*) ; 
 int FUNC1 (int /*<<< orphan*/ *,void const*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive*,scalar_t__,char*,...) ; 
 int FUNC3 (struct archive*,struct write_file_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int,int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  file_close ; 
 int /*<<< orphan*/  file_open ; 
 int /*<<< orphan*/  file_write ; 

__attribute__((used)) static int
FUNC5(struct archive *a, int mbs_fn, const void *filename)
{
	struct write_file_data *mine;
	int r;

	mine = (struct write_file_data *)FUNC4(1, sizeof(*mine));
	if (mine == NULL) {
		FUNC2(a, ENOMEM, "No memory");
		return (ARCHIVE_FATAL);
	}
	if (mbs_fn)
		r = FUNC0(&mine->filename, filename);
	else
		r = FUNC1(&mine->filename, filename);
	if (r < 0) {
		if (errno == ENOMEM) {
			FUNC2(a, ENOMEM, "No memory");
			return (ARCHIVE_FATAL);
		}
		if (mbs_fn)
			FUNC2(a, ARCHIVE_ERRNO_MISC,
			    "Can't convert '%s' to WCS",
			    (const char *)filename);
		else
			FUNC2(a, ARCHIVE_ERRNO_MISC,
			    "Can't convert '%S' to MBS",
			    (const wchar_t *)filename);
		return (ARCHIVE_FAILED);
	}
	mine->fd = -1;
	return (FUNC3(a, mine,
		file_open, file_write, file_close));
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
struct archive_string {int /*<<< orphan*/  s; } ;
struct TYPE_3__ {int /*<<< orphan*/  state; } ;
struct archive_read_disk {TYPE_1__ archive; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 scalar_t__ ARCHIVE_ERRNO_MISC ; 
 int ARCHIVE_FATAL ; 
 int /*<<< orphan*/  ARCHIVE_READ_DISK_MAGIC ; 
 int ARCHIVE_STATE_CLOSED ; 
 int /*<<< orphan*/  ARCHIVE_STATE_FATAL ; 
 int ARCHIVE_STATE_NEW ; 
 scalar_t__ ENOMEM ; 
 int FUNC0 (struct archive*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct archive*,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__,char*) ; 
 scalar_t__ FUNC4 (struct archive_string*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct archive_string*) ; 
 int /*<<< orphan*/  FUNC6 (struct archive_string*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*) ; 

int
FUNC8(struct archive *_a, const wchar_t *pathname)
{
	struct archive_read_disk *a = (struct archive_read_disk *)_a;
	struct archive_string path;
	int ret;

	FUNC1(_a, ARCHIVE_READ_DISK_MAGIC,
	    ARCHIVE_STATE_NEW | ARCHIVE_STATE_CLOSED,
	    "archive_read_disk_open_w");
	FUNC2(&a->archive);

	/* Make a char string from a wchar_t string. */
	FUNC6(&path);
	if (FUNC4(&path, pathname,
	    FUNC7(pathname)) != 0) {
		if (errno == ENOMEM)
			FUNC3(&a->archive, ENOMEM,
			    "Can't allocate memory");
		else
			FUNC3(&a->archive, ARCHIVE_ERRNO_MISC,
			    "Can't convert a path to a char string");
		a->archive.state = ARCHIVE_STATE_FATAL;
		ret = ARCHIVE_FATAL;
	} else
		ret = FUNC0(_a, path.s);

	FUNC5(&path);
	return (ret);
}
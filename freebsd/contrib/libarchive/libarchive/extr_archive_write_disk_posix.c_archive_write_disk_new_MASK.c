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
struct archive {int /*<<< orphan*/  vtable; int /*<<< orphan*/  state; int /*<<< orphan*/  magic; } ;
struct archive_write_disk {int decmpfs_compression_level; struct archive archive; int /*<<< orphan*/  path_safe; int /*<<< orphan*/  user_uid; int /*<<< orphan*/  user_umask; int /*<<< orphan*/  start_time; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_STATE_HEADER ; 
 int /*<<< orphan*/  ARCHIVE_WRITE_DISK_MAGIC ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_write_disk*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

struct archive *
FUNC7(void)
{
	struct archive_write_disk *a;

	a = (struct archive_write_disk *)FUNC2(1, sizeof(*a));
	if (a == NULL)
		return (NULL);
	a->archive.magic = ARCHIVE_WRITE_DISK_MAGIC;
	/* We're ready to write a header immediately. */
	a->archive.state = ARCHIVE_STATE_HEADER;
	a->archive.vtable = FUNC1();
	a->start_time = FUNC5(NULL);
	/* Query and restore the umask. */
	FUNC6(a->user_umask = FUNC6(0));
#ifdef HAVE_GETEUID
	a->user_uid = geteuid();
#endif /* HAVE_GETEUID */
	if (FUNC0(&a->path_safe, 512) == NULL) {
		FUNC3(a);
		return (NULL);
	}
#ifdef HAVE_ZLIB_H
	a->decmpfs_compression_level = 5;
#endif
	return (&a->archive);
}
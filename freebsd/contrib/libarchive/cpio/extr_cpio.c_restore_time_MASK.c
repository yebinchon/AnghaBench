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
struct timeval {int tv_usec; int /*<<< orphan*/  tv_sec; } ;
struct cpio {int /*<<< orphan*/  option_atime_restore; } ;
struct archive_entry {int dummy; } ;
struct __timeval {int dummy; } ;

/* Variables and functions */
 scalar_t__ AE_IFLNK ; 
 int /*<<< orphan*/  FUNC0 (struct archive_entry*) ; 
 int FUNC1 (struct archive_entry*) ; 
 scalar_t__ FUNC2 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*) ; 
 int FUNC4 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC6 (int,struct timeval*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC8 (char const*,struct timeval*) ; 
 scalar_t__ FUNC9 (char const*,struct timeval*) ; 

__attribute__((used)) static int
FUNC10(struct cpio *cpio, struct archive_entry *entry,
    const char *name, int fd)
{
#ifndef HAVE_UTIMES
	static int warned = 0;

	(void)cpio; /* UNUSED */
	(void)entry; /* UNUSED */
	(void)name; /* UNUSED */

	if (!warned)
		FUNC7(0, "Can't restore access times on this platform");
	warned = 1;
	return (fd);
#else
#if defined(_WIN32) && !defined(__CYGWIN__)
	struct __timeval times[2];
#else
	struct timeval times[2];
#endif

	if (!cpio->option_atime_restore)
		return (fd);

        times[1].tv_sec = archive_entry_mtime(entry);
        times[1].tv_usec = archive_entry_mtime_nsec(entry) / 1000;

        times[0].tv_sec = archive_entry_atime(entry);
        times[0].tv_usec = archive_entry_atime_nsec(entry) / 1000;

#if defined(HAVE_FUTIMES) && !defined(__CYGWIN__)
        if (fd >= 0 && futimes(fd, times) == 0)
		return (fd);
#endif
	/*
	 * Some platform cannot restore access times if the file descriptor
	 * is still opened.
	 */
	if (fd >= 0) {
		close(fd);
		fd = -1;
	}

#ifdef HAVE_LUTIMES
        if (lutimes(name, times) != 0)
#else
        if ((AE_IFLNK != archive_entry_filetype(entry))
			&& utimes(name, times) != 0)
#endif
                lafe_warnc(errno, "Can't update time for %s", name);
#endif
	return (fd);
}
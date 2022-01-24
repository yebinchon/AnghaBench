#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct utimbuf {int /*<<< orphan*/  modtime; int /*<<< orphan*/  actime; } ;
struct timeval {long tv_usec; int /*<<< orphan*/  tv_sec; } ;
struct timespec {long tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct _utimbuf {int /*<<< orphan*/  modtime; int /*<<< orphan*/  actime; } ;
typedef  int mode_t ;
struct TYPE_14__ {long tv_nsec; } ;
struct TYPE_15__ {long tv_nsec; TYPE_5__ st__tim; } ;
struct TYPE_12__ {long tv_nsec; } ;
struct TYPE_13__ {long tv_nsec; TYPE_3__ st__tim; } ;
struct TYPE_11__ {long tv_nsec; } ;
struct TYPE_10__ {long tv_nsec; } ;
struct TYPE_16__ {int st_uid; int st_gid; int st_mode; long st_atimensec; long st_mtimensec; int st_uatime; int st_umtime; int /*<<< orphan*/  st_mtime; int /*<<< orphan*/  st_atime; TYPE_6__ st_mtim; TYPE_4__ st_atim; TYPE_2__ st_mtimespec; TYPE_1__ st_atimespec; } ;
struct TYPE_17__ {int /*<<< orphan*/  dest_name; TYPE_7__ src_st; int /*<<< orphan*/  dest_fd; } ;
typedef  TYPE_8__ file_pair ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct _utimbuf*) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct timespec*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct timeval*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct utimbuf*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct timeval*) ; 
 scalar_t__ warn_fchown ; 

__attribute__((used)) static void
FUNC11(const file_pair *pair)
{
	// Skip chown and chmod on Windows.
#ifndef TUKLIB_DOSLIKE
	// This function is more tricky than you may think at first.
	// Blindly copying permissions may permit users to access the
	// destination file who didn't have permission to access the
	// source file.

	// Try changing the owner of the file. If we aren't root or the owner
	// isn't already us, fchown() probably doesn't succeed. We warn
	// about failing fchown() only if we are root.
	if (FUNC3(pair->dest_fd, pair->src_st.st_uid, -1) && warn_fchown)
		FUNC7(FUNC0("%s: Cannot set the file owner: %s"),
				pair->dest_name, FUNC8(errno));

	mode_t mode;

	if (FUNC3(pair->dest_fd, -1, pair->src_st.st_gid)) {
		FUNC7(FUNC0("%s: Cannot set the file group: %s"),
				pair->dest_name, FUNC8(errno));
		// We can still safely copy some additional permissions:
		// `group' must be at least as strict as `other' and
		// also vice versa.
		//
		// NOTE: After this, the owner of the source file may
		// get additional permissions. This shouldn't be too bad,
		// because the owner would have had permission to chmod
		// the original file anyway.
		mode = ((pair->src_st.st_mode & 0070) >> 3)
				& (pair->src_st.st_mode & 0007);
		mode = (pair->src_st.st_mode & 0700) | (mode << 3) | mode;
	} else {
		// Drop the setuid, setgid, and sticky bits.
		mode = pair->src_st.st_mode & 0777;
	}

	if (FUNC2(pair->dest_fd, mode))
		FUNC7(FUNC0("%s: Cannot set the file permissions: %s"),
				pair->dest_name, FUNC8(errno));
#endif

	// Copy the timestamps. We have several possible ways to do this, of
	// which some are better in both security and precision.
	//
	// First, get the nanosecond part of the timestamps. As of writing,
	// it's not standardized by POSIX, and there are several names for
	// the same thing in struct stat.
	long atime_nsec;
	long mtime_nsec;

#	if defined(HAVE_STRUCT_STAT_ST_ATIM_TV_NSEC)
	// GNU and Solaris
	atime_nsec = pair->src_st.st_atim.tv_nsec;
	mtime_nsec = pair->src_st.st_mtim.tv_nsec;

#	elif defined(HAVE_STRUCT_STAT_ST_ATIMESPEC_TV_NSEC)
	// BSD
	atime_nsec = pair->src_st.st_atimespec.tv_nsec;
	mtime_nsec = pair->src_st.st_mtimespec.tv_nsec;

#	elif defined(HAVE_STRUCT_STAT_ST_ATIMENSEC)
	// GNU and BSD without extensions
	atime_nsec = pair->src_st.st_atimensec;
	mtime_nsec = pair->src_st.st_mtimensec;

#	elif defined(HAVE_STRUCT_STAT_ST_UATIME)
	// Tru64
	atime_nsec = pair->src_st.st_uatime * 1000;
	mtime_nsec = pair->src_st.st_umtime * 1000;

#	elif defined(HAVE_STRUCT_STAT_ST_ATIM_ST__TIM_TV_NSEC)
	// UnixWare
	atime_nsec = pair->src_st.st_atim.st__tim.tv_nsec;
	mtime_nsec = pair->src_st.st_mtim.st__tim.tv_nsec;

#	else
	// Safe fallback
	atime_nsec = 0;
	mtime_nsec = 0;
#	endif

	// Construct a structure to hold the timestamps and call appropriate
	// function to set the timestamps.
#if defined(HAVE_FUTIMENS)
	// Use nanosecond precision.
	struct timespec tv[2];
	tv[0].tv_sec = pair->src_st.st_atime;
	tv[0].tv_nsec = atime_nsec;
	tv[1].tv_sec = pair->src_st.st_mtime;
	tv[1].tv_nsec = mtime_nsec;

	(void)futimens(pair->dest_fd, tv);

#elif defined(HAVE_FUTIMES) || defined(HAVE_FUTIMESAT) || defined(HAVE_UTIMES)
	// Use microsecond precision.
	struct timeval tv[2];
	tv[0].tv_sec = pair->src_st.st_atime;
	tv[0].tv_usec = atime_nsec / 1000;
	tv[1].tv_sec = pair->src_st.st_mtime;
	tv[1].tv_usec = mtime_nsec / 1000;

#	if defined(HAVE_FUTIMES)
	(void)futimes(pair->dest_fd, tv);
#	elif defined(HAVE_FUTIMESAT)
	(void)futimesat(pair->dest_fd, NULL, tv);
#	else
	// Argh, no function to use a file descriptor to set the timestamp.
	(void)utimes(pair->dest_name, tv);
#	endif

#elif defined(HAVE__FUTIME)
	// Use one-second precision with Windows-specific _futime().
	// We could use utime() too except that for some reason the
	// timestamp will get reset at close(). With _futime() it works.
	// This struct cannot be const as _futime() takes a non-const pointer.
	struct _utimbuf buf = {
		.actime = pair->src_st.st_atime,
		.modtime = pair->src_st.st_mtime,
	};

	// Avoid warnings.
	(void)atime_nsec;
	(void)mtime_nsec;

	(void)_futime(pair->dest_fd, &buf);

#elif defined(HAVE_UTIME)
	// Use one-second precision. utime() doesn't support using file
	// descriptor either. Some systems have broken utime() prototype
	// so don't make this const.
	struct utimbuf buf = {
		.actime = pair->src_st.st_atime,
		.modtime = pair->src_st.st_mtime,
	};

	// Avoid warnings.
	(void)atime_nsec;
	(void)mtime_nsec;

	(void)utime(pair->dest_name, &buf);
#endif

	return;
}
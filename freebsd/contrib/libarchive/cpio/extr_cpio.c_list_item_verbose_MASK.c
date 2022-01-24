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
typedef  int /*<<< orphan*/  uid_t ;
typedef  int time_t ;
struct cpio {scalar_t__ day_first; scalar_t__ option_numeric_uid_gid; } ;
struct archive_entry {int dummy; } ;
typedef  int /*<<< orphan*/  size ;
typedef  int /*<<< orphan*/  date ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ AE_IFBLK ; 
 scalar_t__ AE_IFCHR ; 
 scalar_t__ FUNC0 (struct archive_entry*) ; 
 scalar_t__ FUNC1 (struct archive_entry*) ; 
 char* FUNC2 (struct archive_entry*) ; 
 char* FUNC3 (struct archive_entry*) ; 
 int FUNC4 (struct archive_entry*) ; 
 char* FUNC5 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC6 (struct archive_entry*) ; 
 scalar_t__ FUNC7 (struct archive_entry*) ; 
 scalar_t__ FUNC8 (struct archive_entry*) ; 
 scalar_t__ FUNC9 (struct archive_entry*) ; 
 char* FUNC10 (struct archive_entry*) ; 
 char* FUNC11 (struct archive_entry*) ; 
 scalar_t__ FUNC12 (struct archive_entry*) ; 
 char* FUNC13 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC16 (int*) ; 
 char* FUNC17 (struct cpio*,int /*<<< orphan*/ ) ; 
 char* FUNC18 (struct cpio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (char*,int,char*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/ * stdout ; 
 int /*<<< orphan*/  FUNC20 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (char*,int,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int*) ; 

__attribute__((used)) static void
FUNC23(struct cpio *cpio, struct archive_entry *entry)
{
	char			 size[32];
	char			 date[32];
	char			 uids[16], gids[16];
	const char 		*uname, *gname;
	FILE			*out = stdout;
	const char		*fmt;
	time_t			 mtime;
	static time_t		 now;

	if (!now)
		FUNC22(&now);

	if (cpio->option_numeric_uid_gid) {
		/* Format numeric uid/gid for display. */
		FUNC20(uids, FUNC14(FUNC12(entry)));
		uname = uids;
		FUNC20(gids, FUNC14(FUNC1(entry)));
		gname = gids;
	} else {
		/* Use uname if it's present, else lookup name from uid. */
		uname = FUNC13(entry);
		if (uname == NULL)
			uname = FUNC18(cpio, (uid_t)FUNC12(entry));
		/* Use gname if it's present, else lookup name from gid. */
		gname = FUNC2(entry);
		if (gname == NULL)
			gname = FUNC17(cpio, (uid_t)FUNC1(entry));
	}

	/* Print device number or file size. */
	if (FUNC0(entry) == AE_IFCHR
	    || FUNC0(entry) == AE_IFBLK) {
		FUNC19(size, sizeof(size), "%lu,%lu",
		    (unsigned long)FUNC7(entry),
		    (unsigned long)FUNC8(entry));
	} else {
		FUNC20(size, FUNC14(FUNC9(entry)));
	}

	/* Format the time using 'ls -l' conventions. */
	mtime = FUNC4(entry);
#if defined(_WIN32) && !defined(__CYGWIN__)
	/* Windows' strftime function does not support %e format. */
	if (mtime - now > 365*86400/2
		|| mtime - now < -365*86400/2)
		fmt = cpio->day_first ? "%d %b  %Y" : "%b %d  %Y";
	else
		fmt = cpio->day_first ? "%d %b %H:%M" : "%b %d %H:%M";
#else
	if (mtime - now > 365*86400/2
		|| mtime - now < -365*86400/2)
		fmt = cpio->day_first ? "%e %b  %Y" : "%b %e  %Y";
	else
		fmt = cpio->day_first ? "%e %b %H:%M" : "%b %e %H:%M";
#endif
	FUNC21(date, sizeof(date), fmt, FUNC16(&mtime));

	FUNC15(out, "%s%3d %-8s %-8s %8s %12s %s",
	    FUNC10(entry),
	    FUNC5(entry),
	    uname, gname, size, date,
	    FUNC6(entry));

	/* Extra information for links. */
	if (FUNC3(entry)) /* Hard link */
		FUNC15(out, " link to %s", FUNC3(entry));
	else if (FUNC11(entry)) /* Symbolic link */
		FUNC15(out, " -> %s", FUNC11(entry));
	FUNC15(out, "\n");
}
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
typedef  int /*<<< orphan*/  time_t ;
struct archive_write_disk {int /*<<< orphan*/  name; int /*<<< orphan*/  mode; int /*<<< orphan*/  fd; int /*<<< orphan*/  entry; int /*<<< orphan*/  start_time; } ;

/* Variables and functions */
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 long FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 long FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 long FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (struct archive_write_disk*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,long,int /*<<< orphan*/ ,long,int /*<<< orphan*/ ,long,int /*<<< orphan*/ ,long) ; 

__attribute__((used)) static int
FUNC13(struct archive_write_disk *a)
{
	time_t atime, birthtime, mtime, cctime;
	long atime_nsec, birthtime_nsec, mtime_nsec, ctime_nsec;

	/* Suitable defaults. */
	atime = birthtime = mtime = cctime = a->start_time;
	atime_nsec = birthtime_nsec = mtime_nsec = ctime_nsec = 0;

	/* If no time was provided, we're done. */
	if (!FUNC1(a->entry)
#if HAVE_STRUCT_STAT_ST_BIRTHTIME
	    && !archive_entry_birthtime_is_set(a->entry)
#endif
	    && !FUNC10(a->entry))
		return (ARCHIVE_OK);

	if (FUNC1(a->entry)) {
		atime = FUNC0(a->entry);
		atime_nsec = FUNC2(a->entry);
	}
	if (FUNC4(a->entry)) {
		birthtime = FUNC3(a->entry);
		birthtime_nsec = FUNC5(a->entry);
	}
	if (FUNC10(a->entry)) {
		mtime = FUNC9(a->entry);
		mtime_nsec = FUNC11(a->entry);
	}
	if (FUNC7(a->entry)) {
		cctime = FUNC6(a->entry);
		ctime_nsec = FUNC8(a->entry);
	}

	return FUNC12(a, a->fd, a->mode, a->name,
			 atime, atime_nsec,
			 birthtime, birthtime_nsec,
			 mtime, mtime_nsec,
			 cctime, ctime_nsec);
}
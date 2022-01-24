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
struct archive_match {int setflag; int /*<<< orphan*/  archive; } ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 int ARCHIVE_FAILED ; 
 int /*<<< orphan*/  ARCHIVE_MATCH_MAGIC ; 
 int /*<<< orphan*/  ARCHIVE_STATE_NEW ; 
 int /*<<< orphan*/  EINVAL ; 
 int ID_IS_SET ; 
 int PATTERN_IS_SET ; 
 int TIME_IS_SET ; 
 int /*<<< orphan*/  FUNC0 (struct archive*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (struct archive_match*,struct archive_entry*) ; 
 int FUNC5 (struct archive_match*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct archive_match*,struct archive_entry*) ; 

int
FUNC7(struct archive *_a, struct archive_entry *entry)
{
	struct archive_match *a;
	int r;

	FUNC0(_a, ARCHIVE_MATCH_MAGIC,
	    ARCHIVE_STATE_NEW, "archive_match_excluded_ae");

	a = (struct archive_match *)_a;
	if (entry == NULL) {
		FUNC3(&(a->archive), EINVAL, "entry is NULL");
		return (ARCHIVE_FAILED);
	}

	r = 0;
	if (a->setflag & PATTERN_IS_SET) {
#if defined(_WIN32) && !defined(__CYGWIN__)
		r = path_excluded(a, 0, archive_entry_pathname_w(entry));
#else
		r = FUNC5(a, 1, FUNC1(entry));
#endif
		if (r != 0)
			return (r);
	}

	if (a->setflag & TIME_IS_SET) {
		r = FUNC6(a, entry);
		if (r != 0)
			return (r);
	}

	if (a->setflag & ID_IS_SET)
		r = FUNC4(a, entry);
	return (r);
}
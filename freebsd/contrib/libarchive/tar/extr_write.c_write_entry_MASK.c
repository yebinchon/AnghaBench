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
struct bsdtar {int verbose; int /*<<< orphan*/  diskreader; } ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int ARCHIVE_WARN ; 
 int /*<<< orphan*/  FUNC0 (struct archive_entry*) ; 
 scalar_t__ FUNC1 (struct archive_entry*) ; 
 char* FUNC2 (struct archive*) ; 
 int FUNC3 (struct archive*,struct archive_entry*) ; 
 scalar_t__ FUNC4 (struct bsdtar*,struct archive*,int /*<<< orphan*/ ,struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct bsdtar*,int /*<<< orphan*/ ,struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC10(struct bsdtar *bsdtar, struct archive *a,
    struct archive_entry *entry)
{
	int e;

	e = FUNC3(a, entry);
	if (e != ARCHIVE_OK) {
		if (bsdtar->verbose > 1) {
			FUNC9(stderr, "a ");
			FUNC8(bsdtar, stderr, entry);
			FUNC7(0, ": %s", FUNC2(a));
		} else if (bsdtar->verbose > 0) {
			FUNC7(0, "%s: %s",
			    FUNC0(entry),
			    FUNC2(a));
		} else
			FUNC6(stderr, ": %s", FUNC2(a));
	}

	if (e == ARCHIVE_FATAL)
		FUNC5(1);

	/*
	 * If we opened a file earlier, write it out now.  Note that
	 * the format handler might have reset the size field to zero
	 * to inform us that the archive body won't get stored.  In
	 * that case, just skip the write.
	 */
	if (e >= ARCHIVE_WARN && FUNC1(entry) > 0) {
		if (FUNC4(bsdtar, a, bsdtar->diskreader, entry))
			FUNC5(1);
	}
}
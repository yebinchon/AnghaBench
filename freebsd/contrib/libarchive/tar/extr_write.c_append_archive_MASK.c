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
struct bsdtar {int flags; int verbose; int /*<<< orphan*/  matching; } ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 int ARCHIVE_EOF ; 
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int ARCHIVE_WARN ; 
 int OPTFLAG_INTERACTIVE ; 
 int /*<<< orphan*/  FUNC0 (struct archive_entry*) ; 
 scalar_t__ FUNC1 (struct archive_entry*) ; 
 char* FUNC2 (struct archive*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct archive*) ; 
 int FUNC5 (struct archive*,struct archive_entry**) ; 
 int FUNC6 (struct archive*,struct archive_entry*) ; 
 scalar_t__ FUNC7 (struct bsdtar*,struct archive*,struct archive*,struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct bsdtar*,int /*<<< orphan*/ ,struct archive_entry*) ; 
 scalar_t__ FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (struct bsdtar*,struct archive*,struct archive_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC16(struct bsdtar *bsdtar, struct archive *a, struct archive *ina)
{
	struct archive_entry *in_entry;
	int e;

	while (ARCHIVE_OK == (e = FUNC5(ina, &in_entry))) {
		if (FUNC3(bsdtar->matching, in_entry))
			continue;
		if ((bsdtar->flags & OPTFLAG_INTERACTIVE) &&
		    !FUNC15("copy '%s'", FUNC0(in_entry)))
			continue;
		if (bsdtar->verbose > 1) {
			FUNC14(stderr, "a ");
			FUNC11(bsdtar, stderr, in_entry);
		} else if (bsdtar->verbose > 0)
			FUNC14(stderr, "a %s",
			    FUNC0(in_entry));
		if (FUNC12())
			FUNC13(bsdtar, a, in_entry, 0);

		e = FUNC6(a, in_entry);
		if (e != ARCHIVE_OK) {
			if (!bsdtar->verbose)
				FUNC10(0, "%s: %s",
				    FUNC0(in_entry),
				    FUNC2(a));
			else
				FUNC9(stderr, ": %s", FUNC2(a));
		}
		if (e == ARCHIVE_FATAL)
			FUNC8(1);

		if (e >= ARCHIVE_WARN) {
			if (FUNC1(in_entry) == 0)
				FUNC4(ina);
			else if (FUNC7(bsdtar, a, ina, in_entry))
				FUNC8(1);
		}

		if (bsdtar->verbose)
			FUNC9(stderr, "\n");
	}

	return (e == ARCHIVE_EOF ? ARCHIVE_OK : e);
}
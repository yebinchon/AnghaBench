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
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 int ARCHIVE_MATCH_EQUAL ; 
 int ARCHIVE_MATCH_MTIME ; 
 int ARCHIVE_MATCH_OLDER ; 
 int /*<<< orphan*/  FUNC0 (struct archive_entry*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*) ; 
 struct archive_entry* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct archive*,int,struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive*) ; 
 struct archive* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct archive*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct archive*) ; 

__attribute__((used)) static void
FUNC10(void)
{
	struct archive_entry *ae;
	struct archive *m;

	if (!FUNC7((m = FUNC6()) != NULL))
		return;
	if (!FUNC7((ae = FUNC2()) != NULL)) {
		FUNC5(m);
		return;
	}

	FUNC0(ae, "file1");
	FUNC3(ae, 7880, 0);
	FUNC8(m, 0, FUNC4(m,
	    ARCHIVE_MATCH_MTIME | ARCHIVE_MATCH_OLDER |
	    ARCHIVE_MATCH_EQUAL, ae));
	FUNC0(ae, "file2");
	FUNC3(ae, 1, 0);
	FUNC8(m, 0, FUNC4(m,
	    ARCHIVE_MATCH_MTIME | ARCHIVE_MATCH_OLDER |
	    ARCHIVE_MATCH_EQUAL, ae));
	FUNC0(ae, "file3");
	FUNC3(ae, 99999, 0);
	FUNC8(m, 0, FUNC4(m,
	    ARCHIVE_MATCH_MTIME | ARCHIVE_MATCH_OLDER |
	    ARCHIVE_MATCH_EQUAL, ae));

	FUNC9(m);

	/* Clean up. */
	FUNC1(ae);
	FUNC5(m);
}
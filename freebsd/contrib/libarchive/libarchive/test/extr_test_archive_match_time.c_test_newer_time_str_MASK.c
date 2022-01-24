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
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 int ARCHIVE_MATCH_CTIME ; 
 int ARCHIVE_MATCH_EQUAL ; 
 int ARCHIVE_MATCH_MTIME ; 
 int ARCHIVE_MATCH_NEWER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*) ; 
 struct archive_entry* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct archive_entry*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct archive_entry*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct archive*,struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC7 (struct archive*) ; 
 int /*<<< orphan*/  FUNC8 (struct archive*,int,char*) ; 
 struct archive* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct archive*,struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct archive*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC16(void)
{
	struct archive_entry *ae;
	struct archive *m;
	time_t now, t;

	if (!FUNC11((m = FUNC9()) != NULL))
		return;
	if (!FUNC11((ae = FUNC3()) != NULL)) {
		FUNC7(m);
		return;
	}

	FUNC15(&now);

	FUNC13(m, 0, FUNC8(m,
	    ARCHIVE_MATCH_MTIME | ARCHIVE_MATCH_CTIME |
	    ARCHIVE_MATCH_NEWER, "1980/2/1 0:0:0 UTC"));

	/* Test1: Allow newer time. */
	FUNC1(ae, "file1");
	t = FUNC0(now, "1980/2/1 0:0:0 UTC");
	FUNC5(ae, t, 0);
	FUNC4(ae, t, 0);
	FUNC14("Both Its mtime and ctime should be excluded");
	FUNC12(1, FUNC10(m, ae));
	FUNC12(1, FUNC6(m, ae));
	t = FUNC0(now, "1980/1/1 0:0:0 UTC");
	FUNC5(ae, t, 0);
	FUNC4(ae, t, 0);
	FUNC14("Both Its mtime and ctime should be excluded");
	FUNC12(1, FUNC10(m, ae));
	FUNC12(1, FUNC6(m, ae));

	t = FUNC0(now, "1980/2/1 0:0:1 UTC");
	FUNC5(ae, t, 0);
	FUNC4(ae, t, 0);
	FUNC14("Both Its mtime and ctime should not be excluded");
	FUNC12(0, FUNC10(m, ae));
	FUNC12(0, FUNC6(m, ae));

	t = FUNC0(now, "1980/2/1 0:0:0 UTC");
	FUNC5(ae, t, 1);
	FUNC4(ae, t, 0);
	FUNC14("Its mtime should be excluded");
	FUNC12(1, FUNC10(m, ae));
	FUNC12(1, FUNC6(m, ae));

	FUNC5(ae, t, 0);
	FUNC4(ae, t, 1);
	FUNC14("Its ctime should be excluded");
	FUNC12(1, FUNC10(m, ae));
	FUNC12(1, FUNC6(m, ae));


	/* Test2: Allow equal or newer time. */
	FUNC13(m, 0, FUNC8(m,
	    ARCHIVE_MATCH_MTIME | ARCHIVE_MATCH_CTIME |
	    ARCHIVE_MATCH_NEWER | ARCHIVE_MATCH_EQUAL,
	    "1980/2/1 0:0:0 UTC"));

	FUNC1(ae, "file1");
	t = FUNC0(now, "1980/2/1 0:0:0 UTC");
	FUNC5(ae, t, 0);
	FUNC4(ae, t, 0);
	FUNC14("Both Its mtime and ctime should not be excluded");
	FUNC12(0, FUNC10(m, ae));
	FUNC12(0, FUNC6(m, ae));
	t = FUNC0(now, "1980/1/1 0:0:0 UTC");
	FUNC5(ae, t, 0);
	FUNC4(ae, t, 0);
	FUNC14("Both Its mtime and ctime should be excluded");
	FUNC12(1, FUNC10(m, ae));
	FUNC12(1, FUNC6(m, ae));

	t = FUNC0(now, "1980/2/1 0:0:1 UTC");
	FUNC5(ae, t, 0);
	FUNC4(ae, t, 0);
	FUNC14("Both Its mtime and ctime should not be excluded");
	FUNC12(0, FUNC10(m, ae));
	FUNC12(0, FUNC6(m, ae));

	/* Clean up. */
	FUNC2(ae);
	FUNC7(m);
}
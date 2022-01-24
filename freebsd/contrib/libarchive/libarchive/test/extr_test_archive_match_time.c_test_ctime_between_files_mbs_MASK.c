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
 int ARCHIVE_MATCH_CTIME ; 
 int ARCHIVE_MATCH_NEWER ; 
 int ARCHIVE_MATCH_OLDER ; 
 int /*<<< orphan*/  ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*) ; 
 struct archive_entry* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct archive*,struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive*) ; 
 int /*<<< orphan*/  FUNC6 (struct archive*,int,char*) ; 
 struct archive* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct archive*,struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC9 (struct archive*,struct archive_entry*,int,int /*<<< orphan*/ *) ; 
 struct archive* FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct archive*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct archive*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 

__attribute__((used)) static void
FUNC16(void)
{
	struct archive *a;
	struct archive_entry *ae;
	struct archive *m;

	if (!FUNC12((m = FUNC7()) != NULL))
		return;
	if (!FUNC12((ae = FUNC3()) != NULL)) {
		FUNC5(m);
		return;
	}
	if (!FUNC12((a = FUNC10()) != NULL)) {
		FUNC5(m);
		FUNC2(ae);
		return;
	}

	/*
	 * Test: ctime between files specified in MBS file name.
	 */
	FUNC14(m, 0, FUNC6(m,
	    ARCHIVE_MATCH_CTIME | ARCHIVE_MATCH_NEWER, "old_ctime"));
	FUNC14(m, 0, FUNC6(m,
	    ARCHIVE_MATCH_CTIME | ARCHIVE_MATCH_OLDER, "new_ctime"));

	/* Verify 'old_ctime' file. */
	FUNC1(ae, "old_ctime");
	FUNC14(a, ARCHIVE_OK,
	    FUNC9(a, ae, -1, NULL));
	FUNC15("old_ctime should be excluded");
	FUNC13(1, FUNC8(m, ae));
	FUNC13(1, FUNC4(m, ae));

	/* Verify 'mid_ctime' file. */
	FUNC0(ae);
	FUNC1(ae, "mid_ctime");
	FUNC14(a, ARCHIVE_OK,
	    FUNC9(a, ae, -1, NULL));
	FUNC15("mid_ctime should not be excluded");
	FUNC13(0, FUNC8(m, ae));
	FUNC13(0, FUNC4(m, ae));

	/* Verify 'new_ctime' file. */
	FUNC0(ae);
	FUNC1(ae, "new_ctime");
	FUNC14(a, ARCHIVE_OK,
	    FUNC9(a, ae, -1, NULL));
	FUNC15("new_ctime should be excluded");
	FUNC13(1, FUNC8(m, ae));
	FUNC13(1, FUNC4(m, ae));

	/* Clean up. */
	FUNC11(a);
	FUNC2(ae);
	FUNC5(m);
}
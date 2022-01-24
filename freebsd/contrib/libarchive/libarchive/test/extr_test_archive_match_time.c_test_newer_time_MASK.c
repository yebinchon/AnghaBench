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
 int ARCHIVE_MATCH_MTIME ; 
 int ARCHIVE_MATCH_NEWER ; 
 int /*<<< orphan*/  FUNC0 (struct archive_entry*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*) ; 
 struct archive_entry* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_entry*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct archive*,struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC6 (struct archive*) ; 
 int /*<<< orphan*/  FUNC7 (struct archive*,int,int,int /*<<< orphan*/ ) ; 
 struct archive* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct archive*,struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct archive*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

__attribute__((used)) static void
FUNC14(void)
{
	struct archive_entry *ae;
	struct archive *m;

	if (!FUNC10((m = FUNC8()) != NULL))
		return;
	if (!FUNC10((ae = FUNC2()) != NULL)) {
		FUNC6(m);
		return;
	}

	FUNC12(m, 0, FUNC7(m,
	    ARCHIVE_MATCH_MTIME | ARCHIVE_MATCH_CTIME |
	    ARCHIVE_MATCH_NEWER, 7880, 0));

	FUNC0(ae, "file1");
	FUNC4(ae, 7880, 0);
	FUNC3(ae, 7880, 0);
	FUNC13("Both Its mtime and ctime should be excluded");
	FUNC11(1, FUNC9(m, ae));
	FUNC11(1, FUNC5(m, ae));
	FUNC4(ae, 7879, 999);
	FUNC3(ae, 7879, 999);
	FUNC13("Both Its mtime and ctime should be excluded");
	FUNC11(1, FUNC9(m, ae));
	FUNC11(1, FUNC5(m, ae));

	FUNC4(ae, 7881, 0);
	FUNC3(ae, 7881, 0);
	FUNC13("Both Its mtime and ctime should not be excluded");
	FUNC11(0, FUNC9(m, ae));
	FUNC11(0, FUNC5(m, ae));

	FUNC4(ae, 7880, 1);
	FUNC3(ae, 7880, 0);
	FUNC13("Its mtime should be excluded");
	FUNC11(1, FUNC9(m, ae));
	FUNC11(1, FUNC5(m, ae));

	FUNC4(ae, 7880, 0);
	FUNC3(ae, 7880, 1);
	FUNC13("Its ctime should be excluded");
	FUNC11(1, FUNC9(m, ae));
	FUNC11(1, FUNC5(m, ae));

	/* Clean up. */
	FUNC1(ae);
	FUNC6(m);
}
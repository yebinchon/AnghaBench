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
 int /*<<< orphan*/  FUNC0 (struct archive_entry*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*) ; 
 struct archive_entry* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct archive*,struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive*,struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static void
FUNC9(struct archive *m)
{
	struct archive_entry *ae;

	if (!FUNC6((ae = FUNC2()) != NULL))
		return;

	FUNC0(ae, "file1");
	FUNC3(ae, 7879, 999);
	FUNC8("It should be excluded");
	FUNC7(1, FUNC5(m, ae));
	FUNC7(1, FUNC4(m, ae));
	FUNC3(ae, 7880, 0);
	FUNC8("It should be excluded");
	FUNC7(1, FUNC5(m, ae));
	FUNC7(1, FUNC4(m, ae));
	FUNC3(ae, 7880, 1);
	FUNC8("It should not be excluded");
	FUNC7(0, FUNC5(m, ae));
	FUNC7(0, FUNC4(m, ae));

	FUNC0(ae, "file2");
	FUNC3(ae, 7879, 999);
	FUNC8("It should not be excluded");
	FUNC7(0, FUNC5(m, ae));
	FUNC7(0, FUNC4(m, ae));
	FUNC3(ae, 7880, 0);
	FUNC8("It should not be excluded");
	FUNC7(0, FUNC5(m, ae));
	FUNC7(0, FUNC4(m, ae));
	FUNC3(ae, 7880, 1);
	FUNC8("It should not be excluded");
	FUNC7(0, FUNC5(m, ae));
	FUNC7(0, FUNC4(m, ae));

	FUNC0(ae, "file3");
	FUNC3(ae, 7879, 999);
	FUNC8("It should be excluded");
	FUNC7(1, FUNC5(m, ae));
	FUNC7(1, FUNC4(m, ae));
	FUNC3(ae, 7880, 0);
	FUNC8("It should be excluded");
	FUNC7(1, FUNC5(m, ae));
	FUNC7(1, FUNC4(m, ae));
	FUNC3(ae, 7880, 1);
	FUNC8("It should be excluded");
	FUNC7(1, FUNC5(m, ae));
	FUNC7(1, FUNC4(m, ae));

	/*
	 * "file4" is not registered, that sort of a file should not be
	 * excluded with any mtime.
	 */
	FUNC0(ae, "file4");
	FUNC3(ae, 7879, 999);
	FUNC8("It should not be excluded");
	FUNC7(0, FUNC5(m, ae));
	FUNC7(0, FUNC4(m, ae));
	FUNC3(ae, 7880, 0);
	FUNC8("It should not be excluded");
	FUNC7(0, FUNC5(m, ae));
	FUNC7(0, FUNC4(m, ae));
	FUNC3(ae, 7880, 1);
	FUNC8("It should not be excluded");
	FUNC7(0, FUNC5(m, ae));
	FUNC7(0, FUNC4(m, ae));


	/* Clean up. */
	FUNC1(ae);
}
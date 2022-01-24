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
 int /*<<< orphan*/  ARCHIVE_EOF ; 
 int /*<<< orphan*/  FUNC0 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*) ; 
 struct archive_entry* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct archive*,struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC6 (struct archive*) ; 
 int /*<<< orphan*/  FUNC7 (struct archive*,char*) ; 
 struct archive* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct archive*,struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC10 (struct archive*) ; 
 int /*<<< orphan*/  FUNC11 (struct archive*,char const**) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct archive*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 

__attribute__((used)) static void
FUNC16(void)
{
	struct archive_entry *ae;
	struct archive *m;
	const char *mp;

	if (!FUNC12((m = FUNC8()) != NULL))
		return;
	if (!FUNC12((ae = FUNC4()) != NULL)) {
		FUNC6(m);
		return;
	}

	/* Test for pattern "^aa*" */
	FUNC14(m, 0, FUNC7(m, "^aa*"));

	/* Test with 'aa1234', which should not be excluded. */
	FUNC1(ae, "aa1234");
	FUNC15("'aa1234' should not be excluded");
	FUNC13(0, FUNC9(m, ae));
	FUNC13(0, FUNC5(m, ae));
	FUNC0(ae);
	FUNC2(ae, L"aa1234");
	FUNC15("'aa1234' should not be excluded");
	FUNC13(0, FUNC9(m, ae));
	FUNC13(0, FUNC5(m, ae));

	/* Test with 'a1234', which should be excluded. */
	FUNC1(ae, "a1234");
	FUNC15("'a1234' should be excluded");
	FUNC13(1, FUNC9(m, ae));
	FUNC13(1, FUNC5(m, ae));
	FUNC0(ae);
	FUNC2(ae, L"a1234");
	FUNC15("'a1234' should be excluded");
	FUNC13(1, FUNC9(m, ae));
	FUNC13(1, FUNC5(m, ae));

	/* Verify unmatched_inclusions. */
	FUNC13(0, FUNC10(m));
	FUNC14(m, ARCHIVE_EOF,
	    FUNC11(m, &mp));

	/* Clean up. */
	FUNC3(ae);
	FUNC6(m);
}
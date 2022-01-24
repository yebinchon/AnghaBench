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
typedef  int /*<<< orphan*/  wchar_t ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_EOF ; 
 int /*<<< orphan*/  ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*) ; 
 struct archive_entry* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct archive*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct archive*,struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC7 (struct archive*) ; 
 int /*<<< orphan*/  FUNC8 (struct archive*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct archive*,char*) ; 
 struct archive* FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct archive*,struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC12 (struct archive*) ; 
 int /*<<< orphan*/  FUNC13 (struct archive*,char const**) ; 
 int /*<<< orphan*/  FUNC14 (struct archive*,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct archive*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC19 (char*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 

__attribute__((used)) static void
FUNC21(void)
{
	struct archive_entry *ae;
	struct archive *m;
	const char *mp;
	const wchar_t *wp;

	if (!FUNC15((m = FUNC10()) != NULL))
		return;
	if (!FUNC15((ae = FUNC4()) != NULL)) {
		FUNC7(m);
		return;
	}

	FUNC17(m, 0, FUNC5(m, "^aaa*"));
	FUNC17(m, 0, FUNC9(m, L"^aa*"));
	FUNC17(m, 0, FUNC8(m, "^a1*"));

	/* Test with 'aa1234', which should not be excluded. */
	FUNC1(ae, "aa1234");
	FUNC20("'aa1234' should not be excluded");
	FUNC16(0, FUNC11(m, ae));
	FUNC16(0, FUNC6(m, ae));
	FUNC0(ae);
	FUNC2(ae, L"aa1234");
	FUNC20("'aa1234' should not be excluded");
	FUNC16(0, FUNC11(m, ae));
	FUNC16(0, FUNC6(m, ae));

	/* Test with 'aaa1234', which should be excluded. */
	FUNC1(ae, "aaa1234");
	FUNC20("'aaa1234' should be excluded");
	FUNC16(1, FUNC11(m, ae));
	FUNC16(1, FUNC6(m, ae));
	FUNC0(ae);
	FUNC2(ae, L"aaa1234");
	FUNC20("'aaa1234' should be excluded");
	FUNC16(1, FUNC11(m, ae));
	FUNC16(1, FUNC6(m, ae));

	/* Verify unmatched_inclusions. */
	FUNC16(1, FUNC12(m));
	/* Verify unmatched inclusion patterns. */
	FUNC17(m, ARCHIVE_OK,
	    FUNC13(m, &mp));
	FUNC18("^a1*", mp);
	FUNC17(m, ARCHIVE_EOF,
	    FUNC13(m, &mp));
	/* Verify unmatched inclusion patterns again in Wide-Char. */
	FUNC17(m, ARCHIVE_OK,
	    FUNC14(m, &wp));
	FUNC19(L"^a1*", wp);
	FUNC17(m, ARCHIVE_EOF,
	    FUNC14(m, &wp));

	/* Clean up. */
	FUNC3(ae);
	FUNC7(m);
}
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
 int /*<<< orphan*/  FUNC0 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*) ; 
 struct archive_entry* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct archive*,struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC6 (struct archive*) ; 
 int /*<<< orphan*/  FUNC7 (struct archive*,struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static void
FUNC11(struct archive *m)
{
	struct archive_entry *ae;

	if (!FUNC8((ae = FUNC4()) != NULL)) {
		FUNC6(m);
		return;
	}

	/* Test with 'first', which should not be excluded. */
	FUNC1(ae, "first");
	FUNC10("'first' should not be excluded");
	FUNC9(0, FUNC7(m, ae));
	FUNC9(0, FUNC5(m, ae));
	FUNC0(ae);
	FUNC2(ae, L"first");
	FUNC10("'first' should not be excluded");
	FUNC9(0, FUNC7(m, ae));
	FUNC9(0, FUNC5(m, ae));

	/* Test with 'second', which should be excluded. */
	FUNC1(ae, "second");
	FUNC10("'second' should be excluded");
	FUNC9(1, FUNC7(m, ae));
	FUNC9(1, FUNC5(m, ae));
	FUNC0(ae);
	FUNC2(ae, L"second");
	FUNC10("'second' should be excluded");
	FUNC9(1, FUNC7(m, ae));
	FUNC9(1, FUNC5(m, ae));

	/* Test with 'third', which should not be excluded. */
	FUNC1(ae, "third");
	FUNC10("'third' should not be excluded");
	FUNC9(0, FUNC7(m, ae));
	FUNC9(0, FUNC5(m, ae));
	FUNC0(ae);
	FUNC2(ae, L"third");
	FUNC10("'third' should not be excluded");
	FUNC9(0, FUNC7(m, ae));
	FUNC9(0, FUNC5(m, ae));

	/* Test with 'four', which should be excluded. */
	FUNC1(ae, "four");
	FUNC10("'four' should be excluded");
	FUNC9(1, FUNC7(m, ae));
	FUNC9(1, FUNC5(m, ae));
	FUNC0(ae);
	FUNC2(ae, L"four");
	FUNC10("'four' should be excluded");
	FUNC9(1, FUNC7(m, ae));
	FUNC9(1, FUNC5(m, ae));

	/* Clean up. */
	FUNC3(ae);
}
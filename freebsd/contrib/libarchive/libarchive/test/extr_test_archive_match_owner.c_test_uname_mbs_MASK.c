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
 int /*<<< orphan*/  FUNC3 (struct archive*,struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct archive*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive*,char*) ; 
 struct archive* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct archive*,struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct archive*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

__attribute__((used)) static void
FUNC12(void)
{
	struct archive_entry *ae;
	struct archive *m;

	if (!FUNC8((m = FUNC6()) != NULL))
		return;
	if (!FUNC8((ae = FUNC2()) != NULL)) {
		FUNC4(m);
		return;
	}

	FUNC10(m, 0, FUNC5(m, "foo"));
	FUNC10(m, 0, FUNC5(m, "bar"));

	FUNC0(ae, "unknown");
	FUNC11("User 'unknown' should be excluded");
	FUNC9(1, FUNC7(m, ae));
	FUNC9(1, FUNC3(m, ae));
	FUNC0(ae, "foo");
	FUNC11("User 'foo' should not be excluded");
	FUNC9(0, FUNC7(m, ae));
	FUNC9(0, FUNC3(m, ae));
	FUNC0(ae, "foo1");
	FUNC11("User 'foo1' should be excluded");
	FUNC9(1, FUNC7(m, ae));
	FUNC9(1, FUNC3(m, ae));
	FUNC0(ae, "bar");
	FUNC11("User 'bar' should not be excluded");
	FUNC9(0, FUNC7(m, ae));
	FUNC9(0, FUNC3(m, ae));
	FUNC0(ae, "bar1");
	FUNC11("User 'bar1' should be excluded");
	FUNC9(1, FUNC7(m, ae));
	FUNC9(1, FUNC3(m, ae));

	/* Clean up. */
	FUNC1(ae);
	FUNC4(m);
}
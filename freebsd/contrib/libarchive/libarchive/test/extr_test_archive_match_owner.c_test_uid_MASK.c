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
 struct archive_entry* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct archive*,struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct archive*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive*,int) ; 
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
	if (!FUNC8((ae = FUNC1()) != NULL)) {
		FUNC4(m);
		return;
	}

	FUNC10(m, 0, FUNC5(m, 1000));
	FUNC10(m, 0, FUNC5(m, 1002));

	FUNC2(ae, 0);
	FUNC11("uid 0 should be excluded");
	FUNC9(1, FUNC7(m, ae));
	FUNC9(1, FUNC3(m, ae));
	FUNC2(ae, 1000);
	FUNC11("uid 1000 should not be excluded");
	FUNC9(0, FUNC7(m, ae));
	FUNC9(0, FUNC3(m, ae));
	FUNC2(ae, 1001);
	FUNC11("uid 1001 should be excluded");
	FUNC9(1, FUNC7(m, ae));
	FUNC9(1, FUNC3(m, ae));
	FUNC2(ae, 1002);
	FUNC11("uid 1002 should not be excluded");
	FUNC9(0, FUNC7(m, ae));
	FUNC9(0, FUNC3(m, ae));
	FUNC2(ae, 1003);
	FUNC11("uid 1003 should be excluded");
	FUNC9(1, FUNC7(m, ae));
	FUNC9(1, FUNC3(m, ae));

	/* Clean up. */
	FUNC0(ae);
	FUNC4(m);
}
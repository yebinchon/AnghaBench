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
 int /*<<< orphan*/  ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (struct archive*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive*) ; 
 struct archive* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct archive*,struct archive_entry**) ; 
 int /*<<< orphan*/  FUNC5 (struct archive*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct archive*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(void)
{
	struct archive* a = FUNC3();
	struct archive_entry* e;

	/* Try opening an empty file with raw and empty handlers. */
	FUNC7(ARCHIVE_OK, FUNC6(a));
	FUNC7(0, FUNC0(a));
	FUNC8(NULL, FUNC1(a));

	FUNC7(ARCHIVE_OK, FUNC5(a, "empty.tar", 0));
	FUNC7(0, FUNC0(a));
	FUNC8(NULL, FUNC1(a));

	FUNC7(ARCHIVE_EOF, FUNC4(a, &e));
	FUNC7(0, FUNC0(a));
	FUNC8(NULL, FUNC1(a));

	FUNC2(a);
}
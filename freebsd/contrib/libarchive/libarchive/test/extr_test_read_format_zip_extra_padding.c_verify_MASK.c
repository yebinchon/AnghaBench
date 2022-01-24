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
 int AE_IFREG ; 
 int /*<<< orphan*/  ARCHIVE_EOF ; 
 int /*<<< orphan*/  ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive*,struct archive_entry**) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct archive*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct archive *a) {
	struct archive_entry *ae;

	FUNC7(a, ARCHIVE_OK, FUNC5(a, &ae));
	FUNC8("a", FUNC4(ae));
	FUNC6(AE_IFREG | 0664, FUNC2(ae));
	FUNC6(0x5c1558d2, FUNC3(ae));
	FUNC6(0, FUNC1(ae));
	FUNC6(0x5c1558db, FUNC0(ae));

	FUNC7(a, ARCHIVE_EOF, FUNC5(a, &ae));
}
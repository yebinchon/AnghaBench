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
 int /*<<< orphan*/  ARCHIVE_OK ; 
 int S_IFREG ; 
 int /*<<< orphan*/  FUNC0 (struct archive_entry*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*) ; 
 struct archive_entry* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_entry*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct archive_entry*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct archive_entry*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct archive_entry*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct archive_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct archive_entry*,char const*) ; 
 int /*<<< orphan*/  FUNC10 (struct archive*,struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct archive*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13(struct archive *a, const char *fname, const char *sym)
{
	struct archive_entry *ae;

	FUNC11((ae = FUNC2()) != NULL);
	FUNC4(ae, 2, 20);
	FUNC3(ae, 3, 30);
	FUNC5(ae, 4, 40);
	FUNC7(ae, 5, 50);
	FUNC0(ae, fname);
	if (sym != NULL)
		FUNC9(ae, sym);
	FUNC6(ae, S_IFREG | 0555);
	FUNC8(ae, 0);
	FUNC12(a, ARCHIVE_OK, FUNC10(a, ae));
	FUNC1(ae);
}
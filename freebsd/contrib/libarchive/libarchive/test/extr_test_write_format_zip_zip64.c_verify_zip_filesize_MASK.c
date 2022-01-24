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
typedef  int /*<<< orphan*/  uint64_t ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;
typedef  int /*<<< orphan*/  buff ;

/* Variables and functions */
 int AE_IFREG ; 
 int /*<<< orphan*/  ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (struct archive_entry*) ; 
 struct archive_entry* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct archive*) ; 
 int /*<<< orphan*/  FUNC6 (struct archive*,struct archive_entry*) ; 
 struct archive* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct archive*,char*,int,size_t*) ; 
 int /*<<< orphan*/  FUNC9 (struct archive*,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct archive*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct archive*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC14(uint64_t size, int expected)
{
	struct archive *a;
	struct archive_entry *ae;
	char buff[256];
	size_t used;

	/* Zip format: Create a new archive in memory. */
	FUNC11((a = FUNC7()) != NULL);
	FUNC13(a, ARCHIVE_OK, FUNC10(a));
	/* Disable Zip64 extensions. */
	FUNC13(a, ARCHIVE_OK,
	    FUNC9(a, "zip", "zip64", NULL));
	FUNC13(a, ARCHIVE_OK,
	    FUNC8(a, buff, sizeof(buff), &used));

	FUNC11((ae = FUNC1()) != NULL);
	FUNC3(ae, "test");
	FUNC2(ae, AE_IFREG | 0644);
	FUNC4(ae, size);
	FUNC12(expected, FUNC6(a, ae));

	FUNC0(ae);

	/* Don't actually write 4GB! ;-) */
	FUNC13(a, ARCHIVE_OK, FUNC5(a));
}
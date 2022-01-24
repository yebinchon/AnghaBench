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
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_EXTRACT_TIME ; 
 int FUNC0 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct archive*,char const*,int) ; 
 struct archive* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct archive*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct archive*) ; 
 int /*<<< orphan*/  FUNC8 (struct archive*) ; 
 int /*<<< orphan*/  FUNC9 (struct archive*,struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct archive*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (char*,...) ; 

__attribute__((used)) static void FUNC18(struct archive_entry *ae, const char *msg)
{
	static const char data[]="abcdefghijklmnopqrstuvwxyz";
	struct archive *ad;

	/* Write the entry to disk. */
	FUNC10((ad = FUNC5()) != NULL);
        FUNC6(ad, ARCHIVE_EXTRACT_TIME);
	FUNC17("%s", msg);
	/*
	 * A touchy API design issue: archive_write_data() does (as of
	 * 2.4.12) enforce the entry size as a limit on the data
	 * written to the file.  This was not enforced prior to
	 * 2.4.12.  The change was prompted by the refined
	 * hardlink-restore semantics introduced at that time.  In
	 * short, libarchive needs to know whether a "hardlink entry"
	 * is going to overwrite the contents so that it can know
	 * whether or not to open the file for writing.  This implies
	 * that there is a fundamental semantic difference between an
	 * entry with a zero size and one with a non-zero size in the
	 * case of hardlinks and treating the hardlink case
	 * differently from the regular file case is just asking for
	 * trouble.  So, a zero size must always mean that no data
	 * will be accepted, which is consistent with the file size in
	 * the entry being a maximum size.
	 */
	FUNC3(ae, sizeof(data));
	FUNC2(ae, 123456789, 0);
	FUNC12(ad, 0, FUNC9(ad, ae));
	FUNC11(sizeof(data), FUNC4(ad, data, sizeof(data)));
	FUNC12(ad, 0, FUNC7(ad));
	FUNC11(0, FUNC8(ad));

	/* Test the entries on disk. */
	FUNC16(FUNC1(ae), FUNC0(ae) & 0777);
	FUNC15(FUNC1(ae), sizeof(data));
	/* test_write_disk_times has more detailed tests of this area. */
	FUNC14(FUNC1(ae), 123456789, 0);
        FUNC17("No atime given, so atime should get set to current time");
	FUNC13(FUNC1(ae));
}
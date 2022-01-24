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
typedef  int /*<<< orphan*/  buff ;

/* Variables and functions */
 int AE_IFREG ; 
 int ARCHIVE_EOF ; 
 int ARCHIVE_FAILED ; 
 int ARCHIVE_FILTER_NONE ; 
 int ARCHIVE_FORMAT_ZIP ; 
 int ARCHIVE_OK ; 
 int ARCHIVE_READ_FORMAT_ENCRYPTION_DONT_KNOW ; 
 int /*<<< orphan*/  FUNC0 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*) ; 
 char* FUNC3 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_entry*) ; 
 scalar_t__ FUNC5 (struct archive*) ; 
 char* FUNC6 (struct archive*) ; 
 int /*<<< orphan*/  FUNC7 (struct archive*) ; 
 int /*<<< orphan*/  FUNC8 (struct archive*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct archive*) ; 
 int /*<<< orphan*/  FUNC10 (struct archive*,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct archive*) ; 
 int /*<<< orphan*/  FUNC12 (struct archive*,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct archive*) ; 
 int /*<<< orphan*/  FUNC14 (struct archive*) ; 
 struct archive* FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (struct archive*,struct archive_entry**) ; 
 int /*<<< orphan*/  FUNC17 (struct archive*,char const*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct archive*) ; 
 int /*<<< orphan*/  FUNC19 (struct archive*) ; 
 int /*<<< orphan*/  FUNC20 (struct archive*) ; 
 int /*<<< orphan*/  FUNC21 (struct archive*) ; 
 struct archive* FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 (struct archive*) ; 
 int FUNC24 (struct archive*,char*) ; 
 int /*<<< orphan*/ * FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 (int) ; 
 int /*<<< orphan*/  FUNC27 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (struct archive*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (char*,char*) ; 
 int /*<<< orphan*/  FUNC30 (char const*) ; 
 int /*<<< orphan*/  FUNC31 (char*) ; 

__attribute__((used)) static void
FUNC32(const char *refname, int need_libz)
{
	struct archive_entry *ae;
	struct archive *a;
	char buff[512];

	/* Check if running system has cryptographic functionality. */
	FUNC26((a = FUNC22()) != NULL);
	FUNC28(a, ARCHIVE_OK, FUNC23(a));
	FUNC28(a, ARCHIVE_OK, FUNC20(a));
	if (ARCHIVE_OK != FUNC24(a,
				"zip:encryption=aes256")) {
		FUNC31("This system does not have cryptographic liberary");
		FUNC21(a);
		return;
	}
	FUNC21(a);


	FUNC30(refname);

	/*
	 * Extract a zip file without password.
	 */
	FUNC26((a = FUNC15()) != NULL);
	FUNC28(a, ARCHIVE_OK, FUNC18(a));
	FUNC28(a, ARCHIVE_OK, FUNC19(a));
	FUNC28(a, ARCHIVE_OK, 
               FUNC17(a, refname, 10240));

	FUNC28(a, ARCHIVE_READ_FORMAT_ENCRYPTION_DONT_KNOW,
		FUNC14(a));

	/* Verify encrypted file "README" */
	FUNC28(a, ARCHIVE_OK, FUNC16(a, &ae));
	FUNC27((AE_IFREG | 0644), FUNC2(ae));
	FUNC29("README", FUNC3(ae));
	FUNC27(6818, FUNC4(ae));
	FUNC27(1, FUNC0(ae));
	FUNC27(0, FUNC1(ae));
	FUNC28(a, 1, FUNC14(a));
	FUNC27(ARCHIVE_FAILED, FUNC12(a, buff, sizeof(buff)));
	FUNC27(1, FUNC7(a));

	/* End of archive. */
	FUNC28(a, ARCHIVE_EOF, FUNC16(a, &ae));

	/* Verify archive format. */
	FUNC28(a, ARCHIVE_FILTER_NONE, FUNC8(a, 0));
	FUNC28(a, ARCHIVE_FORMAT_ZIP, FUNC9(a));

	/* Close the archive. */
	FUNC27(ARCHIVE_OK, FUNC11(a));
	FUNC27(ARCHIVE_OK, FUNC13(a));


	/*
	 * Extract a zip file with password.
	 */
	FUNC26((a = FUNC15()) != NULL);
	FUNC28(a, ARCHIVE_OK, FUNC18(a));
	FUNC28(a, ARCHIVE_OK, FUNC19(a));
	/* Pass three passphrases to decrypt a file content. */
	FUNC28(a, ARCHIVE_OK,
		FUNC10(a, "invalid_pass"));
	FUNC28(a, ARCHIVE_OK,
		FUNC10(a, "invalid_phrase"));
	FUNC28(a, ARCHIVE_OK,
		FUNC10(a, "password"));
	FUNC28(a, ARCHIVE_OK, 
		FUNC17(a, refname, 10240));

	FUNC28(a, ARCHIVE_READ_FORMAT_ENCRYPTION_DONT_KNOW,
		FUNC14(a));

	/* Verify encrypted file "README" */
	FUNC28(a, ARCHIVE_OK, FUNC16(a, &ae));
	FUNC27((AE_IFREG | 0644), FUNC2(ae));
	FUNC29("README", FUNC3(ae));
	FUNC27(6818, FUNC4(ae));
	FUNC27(1, FUNC0(ae));
	FUNC27(0, FUNC1(ae));
	FUNC28(a, 1, FUNC14(a));
	if (!need_libz || FUNC25() != NULL) {
		FUNC27(512, FUNC12(a, buff, sizeof(buff)));
	} else {
		FUNC27(ARCHIVE_FAILED, FUNC12(a, buff, 19));
		FUNC29(FUNC6(a),
		    "Unsupported ZIP compression method (deflation)");
		FUNC26(FUNC5(a) != 0);
	}
	
	FUNC27(1, FUNC7(a));

	/* End of archive. */
	FUNC28(a, ARCHIVE_EOF, FUNC16(a, &ae));

	/* Verify archive format. */
	FUNC28(a, ARCHIVE_FILTER_NONE, FUNC8(a, 0));
	FUNC28(a, ARCHIVE_FORMAT_ZIP, FUNC9(a));

	/* Close the archive. */
	FUNC27(ARCHIVE_OK, FUNC11(a));
	FUNC27(ARCHIVE_OK, FUNC13(a));
}
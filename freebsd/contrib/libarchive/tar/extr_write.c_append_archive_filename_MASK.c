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
struct bsdtar {int return_value; int /*<<< orphan*/  bytes_per_block; int /*<<< orphan*/ * passphrase; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 int ARCHIVE_OK ; 
 int FUNC0 (struct bsdtar*,struct archive*,struct archive*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive*) ; 
 int FUNC2 (struct archive*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct archive*) ; 
 struct archive* FUNC4 () ; 
 scalar_t__ FUNC5 (struct archive*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct archive*,char*) ; 
 int FUNC7 (struct archive*,struct bsdtar*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct archive*) ; 
 int /*<<< orphan*/  FUNC9 (struct archive*) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 int /*<<< orphan*/  passphrase_callback ; 
 int /*<<< orphan*/  FUNC12 (struct bsdtar*,struct archive*) ; 
 scalar_t__ FUNC13 (char const*,char*) ; 

__attribute__((used)) static int
FUNC14(struct bsdtar *bsdtar, struct archive *a,
    const char *raw_filename)
{
	struct archive *ina;
	const char *filename = raw_filename;
	int rc;

	if (FUNC13(filename, "-") == 0)
		filename = NULL; /* Library uses NULL for stdio. */

	ina = FUNC4();
	FUNC9(ina);
	FUNC8(ina);
	FUNC12(bsdtar, ina);
	FUNC6(ina, "mtree:checkfs");
	if (bsdtar->passphrase != NULL)
		rc = FUNC2(a, bsdtar->passphrase);
	else
		rc = FUNC7(ina, bsdtar,
			&passphrase_callback);
	if (rc != ARCHIVE_OK)
		FUNC10(1, 0, "%s", FUNC1(a));
	if (FUNC5(ina, filename,
					bsdtar->bytes_per_block)) {
		FUNC11(0, "%s", FUNC1(ina));
		bsdtar->return_value = 1;
		return (0);
	}

	rc = FUNC0(bsdtar, a, ina);

	if (rc != ARCHIVE_OK) {
		FUNC11(0, "Error reading archive %s: %s",
		    raw_filename, FUNC1(ina));
		bsdtar->return_value = 1;
	}
	FUNC3(ina);

	return (rc);
}
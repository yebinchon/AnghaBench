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
struct bsdtar {int /*<<< orphan*/  filename; int /*<<< orphan*/ * passphrase; int /*<<< orphan*/  cset; int /*<<< orphan*/  bytes_in_last_block; int /*<<< orphan*/  bytes_per_block; int /*<<< orphan*/ * names_from_file; int /*<<< orphan*/ ** argv; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 int ARCHIVE_OK ; 
 int ARCHIVE_WARN ; 
 char const* FUNC0 (struct archive*) ; 
 struct archive* FUNC1 () ; 
 int FUNC2 (struct archive*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct archive*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct archive*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct archive*,char*) ; 
 int FUNC6 (struct archive*) ; 
 int FUNC7 (struct archive*,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct archive*,struct bsdtar*,int /*<<< orphan*/ *) ; 
 char* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int FUNC11 (int /*<<< orphan*/ ,struct archive*,void const**) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  passphrase_callback ; 
 int /*<<< orphan*/  FUNC14 (struct bsdtar*,struct archive*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (struct archive*,struct bsdtar*) ; 

void
FUNC17(struct bsdtar *bsdtar)
{
	struct archive *a;
	const void *filter_name;
	int r;

	if (*bsdtar->argv == NULL && bsdtar->names_from_file == NULL)
		FUNC13(1, 0, "no files or directories specified");

	a = FUNC1();

	/* Support any format that the library supports. */
	if (FUNC9(bsdtar->cset) == NULL) {
		r = FUNC6(a);
		FUNC10(bsdtar->cset, "pax restricted");
	} else {
		r = FUNC5(a,
			FUNC9(bsdtar->cset));
	}
	if (r != ARCHIVE_OK) {
		FUNC12(stderr, "Can't use format %s: %s\n",
		    FUNC9(bsdtar->cset),
		    FUNC0(a));
		FUNC15();
	}

	FUNC4(a, bsdtar->bytes_per_block);
	FUNC3(a, bsdtar->bytes_in_last_block);

	r = FUNC11(bsdtar->cset, a, &filter_name);
	if (r < ARCHIVE_WARN) {
		FUNC13(1, 0, "Unsupported compression option --%s",
		    (const char *)filter_name);
	}

	FUNC14(bsdtar, a);
	if (bsdtar->passphrase != NULL)
		r = FUNC7(a, bsdtar->passphrase);
	else
		r = FUNC8(a, bsdtar,
			&passphrase_callback);
	if (r != ARCHIVE_OK)
		FUNC13(1, 0, "%s", FUNC0(a));
	if (ARCHIVE_OK != FUNC2(a, bsdtar->filename))
		FUNC13(1, 0, "%s", FUNC0(a));
	FUNC16(a, bsdtar);
}
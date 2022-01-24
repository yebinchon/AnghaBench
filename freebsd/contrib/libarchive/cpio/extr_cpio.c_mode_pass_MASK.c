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
struct lafe_line_reader {int dummy; } ;
struct cpio {char* destdir; int /*<<< orphan*/  pass_destpath; int /*<<< orphan*/ * archive; int /*<<< orphan*/  quiet; scalar_t__ dot; int /*<<< orphan*/  linkresolver; int /*<<< orphan*/  option_null; int /*<<< orphan*/ * archive_read_disk; scalar_t__ option_follow_links; int /*<<< orphan*/  extract_flags; } ;
typedef  int int64_t ;

/* Variables and functions */
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct cpio*,char const*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int,int /*<<< orphan*/ ,char*,...) ; 
 struct lafe_line_reader* FUNC17 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct lafe_line_reader*) ; 
 char* FUNC19 (struct lafe_line_reader*) ; 
 char* FUNC20 (size_t) ; 
 int /*<<< orphan*/  FUNC21 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  stderr ; 
 size_t FUNC22 (char const*) ; 

__attribute__((used)) static void
FUNC23(struct cpio *cpio, const char *destdir)
{
	struct lafe_line_reader *lr;
	const char *p;
	int r;
	size_t destdir_len;

	/* Ensure target dir has a trailing '/' to simplify path surgery. */
	destdir_len = FUNC22(destdir);
	cpio->destdir = FUNC20(destdir_len + 8);
	FUNC21(cpio->destdir, destdir, destdir_len);
	if (destdir_len == 0 || destdir[destdir_len - 1] != '/')
		cpio->destdir[destdir_len++] = '/';
	cpio->destdir[destdir_len++] = '\0';

	cpio->archive = FUNC9();
	if (cpio->archive == NULL)
		FUNC16(1, 0, "Failed to allocate archive object");
	r = FUNC10(cpio->archive, cpio->extract_flags);
	if (r != ARCHIVE_OK)
		FUNC16(1, 0, "%s", FUNC2(cpio->archive));
	cpio->linkresolver = FUNC1();
	FUNC11(cpio->archive);

	cpio->archive_read_disk = FUNC4();
	if (cpio->archive_read_disk == NULL)
		FUNC16(1, 0, "Failed to allocate archive object");
	if (cpio->option_follow_links)
		FUNC6(cpio->archive_read_disk);
	else
		FUNC7(cpio->archive_read_disk);
	FUNC5(cpio->archive_read_disk);

	lr = FUNC17("-", cpio->option_null);
	while ((p = FUNC19(lr)) != NULL)
		FUNC13(cpio, p);
	FUNC18(lr);

	FUNC0(cpio->linkresolver);
	r = FUNC8(cpio->archive);
	if (cpio->dot)
		FUNC14(stderr, "\n");
	if (r != ARCHIVE_OK)
		FUNC16(1, 0, "%s", FUNC2(cpio->archive));

	if (!cpio->quiet) {
		int64_t blocks =
			(FUNC3(cpio->archive, 0) + 511)
			/ 512;
		FUNC14(stderr, "%lu %s\n", (unsigned long)blocks,
		    blocks == 1 ? "block" : "blocks");
	}

	FUNC12(cpio->archive);
	FUNC15(cpio->pass_destpath);
}
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
struct archive {int dummy; } ;

/* Variables and functions */
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  ARCHIVE_READ_MAGIC ; 
 int /*<<< orphan*/  ARCHIVE_STATE_NEW ; 
 int /*<<< orphan*/  FUNC0 (struct archive*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive*) ; 
 int /*<<< orphan*/  FUNC4 (struct archive*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive*) ; 
 int /*<<< orphan*/  FUNC6 (struct archive*) ; 
 int /*<<< orphan*/  FUNC7 (struct archive*) ; 
 int /*<<< orphan*/  FUNC8 (struct archive*) ; 
 int /*<<< orphan*/  FUNC9 (struct archive*) ; 
 int /*<<< orphan*/  FUNC10 (struct archive*) ; 
 int /*<<< orphan*/  FUNC11 (struct archive*) ; 
 int /*<<< orphan*/  FUNC12 (struct archive*) ; 
 int /*<<< orphan*/  FUNC13 (struct archive*) ; 
 int /*<<< orphan*/  FUNC14 (struct archive*) ; 

int
FUNC15(struct archive *a)
{
	FUNC0(a, ARCHIVE_READ_MAGIC,
	    ARCHIVE_STATE_NEW, "archive_read_support_filter_all");

	/* Bzip falls back to "bunzip2" command-line */
	FUNC2(a);
	/* The decompress code doesn't use an outside library. */
	FUNC3(a);
	/* Gzip decompress falls back to "gzip -d" command-line. */
	FUNC5(a);
	/* Lzip falls back to "unlzip" command-line program. */
	FUNC8(a);
	/* The LZMA file format has a very weak signature, so it
	 * may not be feasible to keep this here, but we'll try.
	 * This will come back out if there are problems. */
	/* Lzma falls back to "unlzma" command-line program. */
	FUNC9(a);
	/* Xz falls back to "unxz" command-line program. */
	FUNC13(a);
	/* The decode code doesn't use an outside library. */
	FUNC12(a);
	/* The decode code doesn't use an outside library. */
	FUNC11(a);
	/* The decode code always uses "lrzip -q -d" command-line. */
	FUNC6(a);
	/* Lzop decompress falls back to "lzop -d" command-line. */
	FUNC10(a);
	/* The decode code always uses "grzip -d" command-line. */
	FUNC4(a);
	/* Lz4 falls back to "lz4 -d" command-line program. */
	FUNC7(a);
	/* Zstd falls back to "zstd -d" command-line program. */
	FUNC14(a);

	/* Note: We always return ARCHIVE_OK here, even if some of the
	 * above return ARCHIVE_WARN.  The intent here is to enable
	 * "as much as possible."  Clients who need specific
	 * compression should enable those individually so they can
	 * verify the level of support. */
	/* Clear any warning messages set by the above functions. */
	FUNC1(a);
	return (ARCHIVE_OK);
}